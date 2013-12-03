class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :body
      t.boolean :show_in_nav

      t.timestamps
    end
  end
end
