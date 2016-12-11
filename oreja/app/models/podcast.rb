class Podcast < ApplicationRecord
    belongs_to :provider
    has_many :episodes, :dependent => destroy
end
