class AddArtistToSong < ActiveRecord::Migration[7.2]
  def change
    add_column :songs, :artist, :string
  end
end
