class ChangeProviderIdInPodcasts < ActiveRecord::Migration[5.0]
  def change
    change_column :podcasts, :provider_id, :string
    add_foreign_key :podcasts, :provider_id
  end
end
