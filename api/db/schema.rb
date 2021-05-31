# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_31_105353) do

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_tables", charset: "utf8mb4", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_images", charset: "utf8mb4", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "image", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_stocks", charset: "utf8mb4", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "size_id"
    t.boolean "sold", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", charset: "utf8mb4", force: :cascade do |t|
    t.integer "price", null: false
    t.string "name", null: false
    t.text "description", null: false
    t.text "size_fit", null: false
    t.integer "sex_id", null: false, comment: "0が男性、1が女性"
    t.integer "category_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", charset: "utf8mb4", force: :cascade do |t|
    t.string "size", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_tables", charset: "utf8mb4", force: :cascade do |t|
    t.integer "type_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", charset: "utf8mb4", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.integer "sex_id", null: false, comment: "0が男性、1が女性"
    t.string "last_name_kanji", null: false
    t.string "first_name_kanji", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "postal_code"
    t.string "state"
    t.string "city"
    t.string "town"
    t.string "line1"
    t.string "line2"
    t.string "country"
    t.string "phone_number", null: false
    t.string "birthday"
    t.boolean "news_latter", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
