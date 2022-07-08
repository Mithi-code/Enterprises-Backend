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

ActiveRecord::Schema[7.0].define(version: 2022_07_08_151555) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_payments", "users"
end
