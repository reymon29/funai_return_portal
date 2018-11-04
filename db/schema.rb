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

ActiveRecord::Schema.define(version: 2018_11_04_030057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "contactforms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "images", force: :cascade do |t|
    t.integer "return_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "model_number"
    t.string "product_type"
    t.integer "weight"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "carrier_default"
  end

  create_table "return_locations", force: :cascade do |t|
    t.string "company"
    t.string "attention_name"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "contact_number"
  end

  create_table "return_logs", force: :cascade do |t|
    t.bigint "return_id"
    t.bigint "user_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["return_id"], name: "index_return_logs_on_return_id"
    t.index ["user_id"], name: "index_return_logs_on_user_id"
  end

  create_table "returns", force: :cascade do |t|
    t.string "item_number"
    t.string "serial_number"
    t.string "lease_date"
    t.string "part_number"
    t.string "return_reason"
    t.text "comment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rma_number"
    t.string "rma_status"
    t.bigint "product_id"
    t.string "attention_name"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "contact_number"
    t.text "special_comments"
    t.string "return_tracking"
    t.string "return_carrier"
    t.date "date_tracking"
    t.string "store_number"
    t.bigint "return_location_id"
    t.string "slug"
    t.string "location_type"
    t.index ["product_id"], name: "index_returns_on_product_id"
    t.index ["return_location_id"], name: "index_returns_on_return_location_id"
    t.index ["user_id"], name: "index_returns_on_user_id"
  end

  create_table "service_centers", force: :cascade do |t|
    t.string "store_number"
    t.string "contact_name"
    t.string "email"
    t.string "address"
    t.string "address2"
    t.string "state"
    t.string "city"
    t.string "zip"
    t.string "country"
    t.string "contact_number"
    t.text "special_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "store_number"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.string "state"
    t.string "country"
    t.boolean "admin", default: false, null: false
    t.string "address2"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "location_type"
    t.boolean "tos"
    t.boolean "aaronsmgr", default: false, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "return_logs", "returns"
  add_foreign_key "return_logs", "users"
  add_foreign_key "returns", "products"
  add_foreign_key "returns", "return_locations"
  add_foreign_key "returns", "users"
end
