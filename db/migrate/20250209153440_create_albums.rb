class CreateAlbums < ActiveRecord::Migration[7.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :year
      t.string :genre

      t.timestamps
    end
  end
end
