class AddImageToProvider < ActiveRecord::Migration[5.0]
  def change
    add_column :providers, :image_url, :string
  end
end
