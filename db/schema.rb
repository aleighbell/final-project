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

ActiveRecord::Schema.define(version: 20160926204452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "business_name"
    t.text     "business_address"
    t.string   "url"
    t.integer  "city_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.integer  "business_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contactus", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "businessname"
    t.string   "businessaddress"
    t.boolean  "businessowner"
    t.string   "message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "business_id"
    t.integer  "city_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "name"
    t.string   "password_hash"
    t.string   "password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
