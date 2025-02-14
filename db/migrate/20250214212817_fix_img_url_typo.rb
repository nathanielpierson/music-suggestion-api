class FixImgUrlTypo < ActiveRecord::Migration[7.2]
  def change
    rename_column :albums, :img_irl, :img_url
  end
end
