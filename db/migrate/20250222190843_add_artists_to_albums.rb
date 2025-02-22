class AddArtistsToAlbums < ActiveRecord::Migration[7.2]
  def change
    add_column :albums, :artist, :string
  end
end
