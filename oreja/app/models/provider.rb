class Provider < ApplicationRecord
    validates :name, :uniqueness => true
    has_many :podcasts
end
