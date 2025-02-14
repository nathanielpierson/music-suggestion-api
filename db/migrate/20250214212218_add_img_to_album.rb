class AddImgToAlbum < ActiveRecord::Migration[7.2]
  def change
    add_column :albums, :img_irl, :string
  end
end
