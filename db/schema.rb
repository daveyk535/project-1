# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140506142414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "burgers", force: true do |t|
    t.string   "burger_name"
    t.decimal  "price"
    t.string   "protein"
    t.string   "bun_type"
    t.boolean  "grass_fed"
    t.boolean  "gluten_free"
    t.decimal  "average_score"
    t.decimal  "num_reviews"
    t.text     "description"
    t.text     "special_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "zip"
    t.string   "website"
    t.string   "phone"
  end

  create_table "reviews", force: true do |t|
    t.decimal  "patty"
    t.decimal  "bun"
    t.decimal  "bun_patty_ratio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "toppings"
    t.decimal  "service"
    t.decimal  "total"
    t.integer  "user_Id"
    t.integer  "burger_Id"
    t.text     "comments"
    t.decimal  "side"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
