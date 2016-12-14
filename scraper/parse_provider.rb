require "nokogiri"
require "httparty"
require "pry"

require_relative "sampledata"

include SampleData

def write_provider
  open("provider_data.txt","w") do |f|
    RESULTS.each do |podcast|
      f <<   "\'#{podcast[:artistName]}\'" 
      f << ",\n"
    end
  end
end

write_provider

