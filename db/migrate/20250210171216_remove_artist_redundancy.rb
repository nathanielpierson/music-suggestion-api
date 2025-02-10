class RemoveArtistRedundancy < ActiveRecord::Migration[7.2]
  def change
    remove_column :songs, :artist, :string
  end
end
