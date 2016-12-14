require "nokogiri"
require "httparty"


## Use these commands to test out your scraping commands before batching them.

# page = HTTParty.get('http://www.bbc.co.uk/programmes/p02nq0lx/episodes/downloads.rss')

# parse_page = Nokogiri::XML(page.body)
# titles = parse_page.xpath("//item//title").collect {|episode| episode.content}
# episode_details = parse_page.xpath("//item//description").collect {|episode| episode.content.gsub("\n","")}
# pubdate = parse_page.xpath("//item//pubDate").collect {|episode| episode.content}
# duration = parse_page.xpath("//item//itunes:duration").collect {|episode| episode.content}

# p titles
#p titles.zip(episode_details,pubdate,duration)

##

def find_episodes(podcast)
    
    podcast_link = podcast[:feedUrl]
    page = HTTParty.get(podcast_link)
    parse_page = Nokogiri::XML(page.body)
    titles = parse_page.xpath("//item//title").collect {|episode| episode.content}
    episode_details = parse_page.xpath("//item//description").collect {|episode| episode.content.gsub("\n","")}
    pubdate = parse_page.xpath("//item//pubDate").collect {|episode| episode.content}
    duration = parse_page.xpath("//item//itunes:duration").collect {|episode| episode.content}
    
    episode_information = titles.zip(episode_details,pubdate,duration)
    
    return episode_information
    
end
    
# 

def write_episode
  open("provider_data.txt","w") do |f|
    RESULTS.each do |podcast|
      f <<   "\'#{podcast[:artistName]}\'" + ", "
      f << "\'#{find_description(podcast)}\'"
      f << ",\n"
    end
  end
end

write_episode