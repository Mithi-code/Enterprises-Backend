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

ActiveRecord::Schema[7.0].define(version: 2022_07_11_073633) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", id: false, force: :cascade do |t|
    t.integer "id"
    t.bigint "shopping_session_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_cart_items_on_product_id"
    t.index ["shopping_session_id"], name: "index_cart_items_on_shopping_session_id"
  end

  create_table "discounts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "desciption"
    t.decimal "discount_percent"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", id: :serial, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payment_details_id"
    t.index ["payment_details_id"], name: "index_order_details_on_payment_details_id"
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "order_items", id: false, force: :cascade do |t|
    t.integer "id"
    t.bigint "order_details_id", null: false
    t.bigint "payment_details_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_details_id"], name: "index_order_items_on_order_details_id"
    t.index ["payment_details_id"], name: "index_order_items_on_payment_details_id"
  end

  create_table "payment_details", id: :serial, force: :cascade do |t|
    t.bigint "order_details_id", null: false
    t.integer "amount"
    t.string "provider"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_details_id"], name: "index_payment_details_on_order_details_id"
  end

  create_table "product_categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_inventories", id: :serial, force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.string "SKU"
    t.bigint "product_inventories_id"
    t.bigint "product_categories_id"
    t.bigint "discount_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_products_on_discount_id"
    t.index ["product_categories_id"], name: "index_products_on_product_categories_id"
    t.index ["product_inventories_id"], name: "index_products_on_product_inventories_id"
  end

  create_table "shopping_sessions", id: :serial, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_sessions_on_user_id"
  end

  create_table "user_addresses", id: false, force: :cascade do |t|
    t.integer "id"
    t.bigint "user_id", null: false
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.integer "postal_code"
    t.string "country"
    t.string "telephone"
    t.string "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_payments", id: false, force: :cascade do |t|
    t.integer "id"
    t.bigint "user_id"
    t.string "payment_type"
    t.string "provider"
    t.integer "account_no"
    t.date "expiry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_payments_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username"
    t.text "password"
    t.decimal "first_name"
    t.string "last_name"
    t.string "address"
    t.integer "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cart_items", "products"
  add_foreign_key "cart_items", "shopping_sessions"
  add_foreign_key "order_details", "users"
  add_foreign_key "order_items", "order_details", column: "order_details_id"
  add_foreign_key "order_items", "payment_details", column: "payment_details_id"
  add_foreign_key "payment_details", "order_details", column: "order_details_id"
  add_foreign_key "products", "discounts"
  add_foreign_key "products", "product_categories", column: "product_categories_id"
  add_foreign_key "products", "product_inventories", column: "product_inventories_id"
  add_foreign_key "shopping_sessions", "users"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_payments", "users"
end
