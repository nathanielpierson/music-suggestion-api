class AddimgUrlToArtist < ActiveRecord::Migration[7.2]
  add_column :artists, :img_url, :string
  def change
  end
end
