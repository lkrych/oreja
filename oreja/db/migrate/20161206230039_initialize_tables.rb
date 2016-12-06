class InitializeTables < ActiveRecord::Migration[5.0]
  def change
      change_table :episodes  do |t|
        t.string "name"
        t.text "description"
        t.time "duration"
        t.datetime "air_date"
        t.references 'podcast'
        t.references 'provider'
      end

      change_table :podcasts do |t|
        t.string "name"
        t.string 'genre'
        t.text 'summary'
        t.references 'episodes'
        t.references 'provider'
      end

      change_table :providers do |t|
        t.string "name"
        t.text "description"
        t.datetime "first"
        t.references 'podcasts'
      end
    
  end
end

