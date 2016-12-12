class AddImageToPodcasts < ActiveRecord::Migration[5.0]
  def change
    add_column :podcasts, :image_url, :string
  end
end
