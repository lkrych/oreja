class ChangePodcastIdInEpisodes < ActiveRecord::Migration[5.0]
  def change
    change_column :episodes, :podcast_id, :string
    add_foreign_key :episodes, :podcast_id
  end
end
