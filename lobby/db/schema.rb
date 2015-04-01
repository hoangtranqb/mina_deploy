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

ActiveRecord::Schema.define(version: 20150331140920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "image_url"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "radius"
    t.integer  "city_id"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "distance"
  end

  create_table "images", force: true do |t|
    t.string   "image_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interest_pages", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "uid"
    t.string   "email"
    t.integer  "age"
    t.string   "image_url"
    t.string   "bio"
    t.float    "longitude"
    t.string   "gender"
    t.string   "auth_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number_of_friends"
    t.string   "mutual_friends"
    t.string   "address"
    t.float    "latitude"
  end

end
