json.extract! episode, :id, :name, :description, :duration, :air_date, :created_at, :updated_at
json.url episode_url(episode, format: :json)