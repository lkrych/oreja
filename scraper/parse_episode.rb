require "nokogiri"
require "httparty"

require_relative "sampledata"

include SampleData


# Use these commands to test out your scraping commands before batching them.

# page = HTTParty.get('http://www.bbc.co.uk/programmes/p02nq0lx/episodes/downloads.rss')

# parse_page = Nokogiri::XML(page.body)
# titles = parse_page.xpath("//title").collect {|episode| episode.content}
# episode_details = parse_page.xpath("//description").collect {|episode| episode.content.gsub("\n","")}
# pubdate = parse_page.xpath("//pubDate").collect {|episode| episode.content}
# duration = parse_page.xpath("//itunes:duration").collect {|episode| episode.content}

# p titles
# p titles.zip(episode_details,pubdate,duration)

#

def find_episodes(podcast)
    
    podcast_link = podcast[:feedUrl]
    page = HTTParty.get(podcast_link)
    parse_page = Nokogiri::XML(page.body)
    titles = parse_page.xpath("//title").collect {|episode| episode.content.gsub('"','')}
    episode_details = parse_page.xpath("//description").collect {|episode| episode.content.gsub("\n","").gsub('"','').gsub(/<.+?>/,'')}
    pubdate = parse_page.xpath("//pubDate").collect {|episode| episode.content}
    duration = parse_page.xpath("//itunes:duration").collect {|episode| episode.content}
    episode_information = titles.zip(episode_details,pubdate,duration)
    
    return episode_information
  
end
    
# 

def write_episode
  open("seed_data/vox_data.rb","w") do |f|
    f << "module SampleEpisodes\n"
    f << "EPISODES = [\n"
    RESULTS.each do |podcast|
      episodes = find_episodes(podcast)
      episodes.each do |podcast_episode|
        f << "[ " +   "\"#{podcast_episode[0]}\"" + ", "
        f <<  "\"#{podcast_episode[1]}\"" + ", "
        f <<  "\"#{podcast_episode[2]}\"" + ", "
        f <<  "\"#{podcast_episode[3]}\"" + ", "
        f <<   "\"#{podcast[:collectionName]}\"" 
        f << "],\n"
      end
    end
    f << "]\n"
    f << "end"
  end
end

write_episode