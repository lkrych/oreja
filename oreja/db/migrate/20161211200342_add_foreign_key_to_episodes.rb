class AddForeignKeyToEpisodes < ActiveRecord::Migration[5.0]
  def change
  end
  add_index :episodes, :podcast_id
end
