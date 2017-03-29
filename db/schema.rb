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

ActiveRecord::Schema.define(version: 20170329134334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree
  end

  create_table "open_times", force: :cascade do |t|
    t.integer  "toilet_id"
    t.time     "monday_open"
    t.time     "monday_close"
    t.time     "tuesday_open"
    t.time     "tuesday_close"
    t.time     "wednesday_open"
    t.time     "wednesday_close"
    t.time     "thursday_open"
    t.time     "thursday_close"
    t.time     "friday_open"
    t.time     "friday_close"
    t.time     "saturday_open"
    t.time     "saturday_close"
    t.time     "sunday_open"
    t.time     "sunday_close"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["toilet_id"], name: "index_open_times_on_toilet_id", using: :btree
  end

  create_table "toilets", force: :cascade do |t|
    t.string   "location_address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "location_name"
    t.integer  "user_id"
    t.string   "toilet_type"
    t.float    "price"
    t.boolean  "shittable"
    t.string   "city"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_toilets_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "gender"
    t.integer  "account_id"
    t.boolean  "toilet_user"
    t.boolean  "toilet_owner"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["account_id"], name: "index_users_on_account_id", using: :btree
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "toilet_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.string   "comment"
    t.boolean  "has_paper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toilet_id"], name: "index_visits_on_toilet_id", using: :btree
    t.index ["user_id"], name: "index_visits_on_user_id", using: :btree
  end

  add_foreign_key "open_times", "toilets"
  add_foreign_key "toilets", "users"
  add_foreign_key "users", "accounts"
  add_foreign_key "visits", "toilets"
  add_foreign_key "visits", "users"
end
