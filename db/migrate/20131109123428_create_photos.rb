class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :path
      t.references :land, index: true
      t.text :description

      t.timestamps
    end
  end
end
