class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :location
      t.string :title_deed
      t.string :climatic_condition
      t.string :soil_type
      t.references :user, index: true
      t.string :map
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
