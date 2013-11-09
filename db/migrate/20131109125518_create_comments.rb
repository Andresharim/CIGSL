class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :land, index: true
      t.text :body

      t.timestamps
    end
  end
end
