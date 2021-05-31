class CreateItemStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :item_stocks do |t|
      t.integer :item_id, null: false
      t.integer :size_id
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
