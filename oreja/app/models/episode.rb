class Episode < ApplicationRecord
    validates_uniqueness_of :name
    belongs_to :podcast, optional: true
    
    def display_time(type)
        if type == "duration"
            self.duration.nil? ? "Unknown" : self.duration.strftime("%H:%M:%S")
        else 
            self.air_date.nil? ? "Unknown" : self.air_date.to_formatted_s(:long)
        end
    end
end
