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

ActiveRecord::Schema.define(version: 20140602012415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "country"
    t.string   "provincestate"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show"
    t.string   "lat"
    t.string   "long"
  end

  add_index "entries", ["comment"], name: "index_entries_on_comment", using: :btree
  add_index "entries", ["country"], name: "index_entries_on_country", using: :btree
  add_index "entries", ["email"], name: "index_entries_on_email", using: :btree
  add_index "entries", ["firstname"], name: "index_entries_on_firstname", using: :btree
  add_index "entries", ["lastname"], name: "index_entries_on_lastname", using: :btree
  add_index "entries", ["provincestate"], name: "index_entries_on_provincestate", using: :btree

  create_table "search_countries", force: true do |t|
    t.string   "country"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
