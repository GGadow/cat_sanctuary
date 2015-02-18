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

ActiveRecord::Schema.define(version: 20150218025836) do

  create_table "adoptions", force: :cascade do |t|
    t.integer  "cat_id"
    t.integer  "person_id"
    t.datetime "adoption_date"
    t.text     "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "adoptions", ["cat_id"], name: "index_adoptions_on_cat_id"
  add_index "adoptions", ["person_id"], name: "index_adoptions_on_person_id"

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.integer  "age"
    t.string   "image_url"
    t.datetime "arrival_date"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "day_phone"
    t.string   "eve_phone"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
