json.extract! podcast, :id, :name, :genre, :summary, :created_at, :updated_at
json.url podcast_url(podcast, format: :json)