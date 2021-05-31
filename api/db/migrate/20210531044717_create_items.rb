class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :price, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.text :size_fit, null: false
      t.integer :sex_id, null: false, comment: "0が男性、1が女性"
      t.integer :category_id, null: false
      t.integer :type_id, null: false

      t.timestamps
    end
  end
end
