class Episode < ApplicationRecord
    belongs_to :podcast
    belongs_to :provider, through: :podcast
end
