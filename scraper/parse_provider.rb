require "nokogiri"
require "httparty"
require "pry"

require_relative "sampledata"

include SampleData

def write_provider
  open("seed_data/provider_data.rb","w") do |f|
    f << "module SampleProviders\n"
    f << "PROVIDERS = [\n"
    RESULTS.each do |podcast|
      f <<   "\'#{podcast[:artistName]}\'" 
      f << ",\n"
    end
    f << "]\n"
    f << "end"
    
  end
end

write_provider

