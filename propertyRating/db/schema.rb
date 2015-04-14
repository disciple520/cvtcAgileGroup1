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

ActiveRecord::Schema.define(version: 20150414191458) do

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["property_id"], name: "index_comments_on_property_id"

  create_table "properties", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "apt"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "rooms"
    t.string   "rent"
    t.string   "utilities"
    t.boolean  "petsAllowed"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "explanation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
