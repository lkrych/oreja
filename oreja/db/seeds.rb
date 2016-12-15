# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative "../../scraper/seed_data/provider_data.rb"
require_relative "../../scraper/seed_data/podcast_data.rb"
require_relative "../../scraper/seed_data/episode_data.rb"

include SampleProviders, SamplePodcasts, SampleEpisodes

Provider.destroy_all
Podcast.destroy_all


podcast_list = PODCASTS

provider_list = PROVIDERS

episode_list = EPISODES

provider_list.each do |provider_name|
    Provider.find_or_create_by(name: provider_name)
end

# providers = Provider.all #troubleshooting
# providers.each {|provider| puts provider.name}

p "Created #{Provider.count} providers"

podcast_list.each do |provider, description, podcast, image, genre|
    provider_object = Provider.find_by name: provider
    provider_object.podcasts.create( provider_id: provider, summary: description, name: podcast, image_url: image, genre: genre)
end


p "Created #{Podcast.count} podcasts"

episode_list.each do |title, episode_description, pubdate, duration, podcast_name|
    podcast_object = Podcast.find_by name: podcast_name
    podcast_object.episodes.create(name: title, description: episode_description, air_date: pubdate, duration: duration, podcast_id: podcast_name)
end

p "Created #{Episode.count} episodes"
