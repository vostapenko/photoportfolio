class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :name, null:  false
      t.string :image

      t.timestamps
    end
  end
end
