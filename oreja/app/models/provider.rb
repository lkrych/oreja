class Provider < ApplicationRecord
    has_many :podcasts
    has_many :episodes, through: :podcasts
end
