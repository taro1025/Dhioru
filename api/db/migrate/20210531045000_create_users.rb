class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.integer :sex_id, null: false, comment: "0が男性、1が女性"
      t.string :last_name_kanji, null: false
      t.string :first_name_kanji, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :postal_code
      t.string :state
      t.string :city
      t.string :town
      t.string :line1
      t.string :line2
      t.string :country
      t.string :phone_number, null: false
      t.string :birthday
      t.boolean :news_latter, default: false

      t.timestamps
    end
  end
end
