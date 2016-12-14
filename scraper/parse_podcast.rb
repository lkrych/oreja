#Use this file to parse output from itunes search api
require_relative "sampledata"
require "json"
require "nokogiri"
require "httparty"


include SampleData #import itunes search API data


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

def write_podcast
  attributes = [:collectionName, :artworkUrl600,:primaryGenreName]
  open("podcast_data.txt","w") do |f|
    RESULTS.each do |podcast|
      f << "[ " + "\'#{podcast[:artistName]}\'" + ", "
      f << "\'#{find_description(podcast)}\'" + ", "
      attributes.each do |attribute|
        if attribute != :primaryGenreName
          f << "\"#{podcast[attribute]}\"" + ", "
        else
          f << "\"#{podcast[attribute]}\""
        end
      end
      f << "],\n"
    end
  end
end


write_podcast


