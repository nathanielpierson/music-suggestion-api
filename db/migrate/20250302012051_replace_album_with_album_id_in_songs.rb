class ReplaceAlbumWithAlbumIdInSongs < ActiveRecord::Migration[7.2]
  def change
    remove_column :songs, :album, :string
    add_column :songs, :album_id, :integer
  end
end
