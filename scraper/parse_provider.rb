require "nokogiri"
require "httparty"
require "pry"

require_relative "sampledata"

include SampleData

### Use these commands to test out your scraping commands before batching them.

# page = HTTParty.get('http://www.bbc.co.uk/programmes/p02nq0lx/episodes/downloads.rss')

# parse_page = Nokogiri::XML(page.body)

# description = parse_page.at_css("description").content
# p description

###

def find_description(podcast)
    
    descrip_link = podcast[:feedUrl]
    page = HTTParty.get(descrip_link)
    parse_page = Nokogiri::XML(page.body)
    description = parse_page.at_css("description").content
    return description
    
end
    
# 

def write_provider
  open("provider_data.txt","w") do |f|
    RESULTS.each do |podcast|
      f <<   "\'#{podcast[:artistName]}\'" + ", "
      f << "\'#{find_description(podcast)}\'"
      f << ",\n"
    end
  end
end

write_provider

