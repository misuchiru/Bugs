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

ActiveRecord::Schema.define(version: 20160118101055) do

  create_table "japan_weathers", force: :cascade do |t|
    t.text     "url"
    t.text     "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "day1_h"
    t.text     "day1_l"
    t.text     "day2_h"
    t.text     "day2_l"
    t.text     "day3_h"
    t.text     "day3_l"
    t.text     "day4_h"
    t.text     "day4_l"
    t.text     "day5_h"
    t.text     "day5_l"
    t.text     "day6_h"
    t.text     "day6_l"
    t.text     "day7_h"
    t.text     "day7_l"
    t.text     "day1"
    t.text     "day2"
    t.text     "day3"
    t.text     "day4"
    t.text     "day5"
    t.text     "day6"
    t.text     "day7"
    t.string   "day1_p"
    t.string   "day2_p"
    t.string   "day3_p"
    t.string   "day4_p"
    t.string   "day5_p"
    t.string   "day6_p"
    t.string   "day7_p"
  end

  create_table "japanrates", force: :cascade do |t|
    t.text     "url"
    t.text     "cashrate_buy"
    t.text     "cashrate_sell"
    t.text     "sightrate_buy"
    t.text     "sightrate_sell"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "bank"
    t.float    "price1"
    t.float    "price2"
    t.float    "price3"
    t.float    "price4"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "trip_events", force: :cascade do |t|
    t.string   "title"
    t.integer  "trip_id"
    t.integer  "user_id"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
    t.string   "account"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
