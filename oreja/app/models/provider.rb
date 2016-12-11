class Provider < ApplicationRecord
    has_many :podcasts, :dependent => destroy
    
end
