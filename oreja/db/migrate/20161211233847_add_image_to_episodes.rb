class AddImageToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :image_url, :string
  end
end
