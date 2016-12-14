class Podcast < ApplicationRecord
    validates :name, :uniqueness => true
    
    belongs_to :provider, optional: true
    has_many :episodes
end
