# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171113220843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "country"
    t.string "postal_code"
    t.string "phone_number"
  end

  create_table "attachinary_files", id: :serial, force: :cascade do |t|
    t.string "attachinariable_type"
    t.integer "attachinariable_id"
    t.string "scope"
    t.string "public_id"
    t.string "version"
    t.integer "width"
    t.integer "height"
    t.string "format"
    t.string "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "plant_id"
    t.bigint "order_id"
    t.integer "quantity"
    t.decimal "unit_price", precision: 6, scale: 2
    t.decimal "total_price", precision: 6, scale: 2
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["plant_id"], name: "index_order_items_on_plant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status"
    t.bigint "user_id"
    t.decimal "subtotal", precision: 6, scale: 2
    t.decimal "tax", precision: 6, scale: 2
    t.decimal "shipping", precision: 6, scale: 2
    t.decimal "total", precision: 6, scale: 2
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "water_level"
    t.integer "sun_level"
    t.integer "care_level"
    t.text "special_care"
    t.decimal "price", precision: 5, scale: 2
    t.text "description"
    t.decimal "height", precision: 5, scale: 2
    t.string "common_name"
    t.string "scientific_name"
    t.integer "size"
    t.integer "suspended"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "plants"
  add_foreign_key "orders", "users"
end
