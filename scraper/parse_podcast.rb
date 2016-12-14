#Use this file to parse output from itunes search api
require_relative "sampledata"
require "json"

include SampleData #import itunes search API data

def write_podcast
  attributes = [:collectionName, :artworkUrl600,:primaryGenreName]
  open("podcast_data.txt","w") do |f|
    RESULTS.each do |podcast|
      f << "[ " + "\'#{podcast[:artistName]}\'" + ", "
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


