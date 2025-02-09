class AddArtistIdColumn < ActiveRecord::Migration[7.2]
  def change
    add_column :songs, :artist_id, :string
  end
end
