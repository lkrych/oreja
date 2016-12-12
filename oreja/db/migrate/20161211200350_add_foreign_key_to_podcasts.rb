class AddForeignKeyToPodcasts < ActiveRecord::Migration[5.0]
  def change
  end
  add_index :podcasts, :provider_id
end
