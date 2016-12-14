class Episode < ApplicationRecord
    validates_uniqueness_of :name
    belongs_to :podcast
end
