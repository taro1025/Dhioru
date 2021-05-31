class CreateCategoryTables < ActiveRecord::Migration[6.1]
  def change
    create_table :category_tables do |t|
      t.integer :category_id, null: false
      t.integer :item_id, null: false

      t.timestamps
    end
  end
end
