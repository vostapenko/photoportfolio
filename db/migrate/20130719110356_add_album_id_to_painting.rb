class AddAlbumIdToPainting < ActiveRecord::Migration
  def change
    add_column :paintings, :album_id, :integer, null:  false
  end
end
