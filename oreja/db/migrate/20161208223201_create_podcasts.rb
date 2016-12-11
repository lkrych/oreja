class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :genre
      t.text :summary
      t.integer :provider_id
      t.timestamps
    end
  end
end
