class CreateTypeTables < ActiveRecord::Migration[6.1]
  def change
    create_table :type_tables do |t|
      t.integer :type_id, null: false
      t.integer :item_id, null: false

      t.timestamps
    end
  end
end
