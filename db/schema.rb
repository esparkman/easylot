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

ActiveRecord::Schema.define(version: 20160601015059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authem_sessions", force: :cascade do |t|
    t.string   "role",                    null: false
    t.integer  "subject_id",              null: false
    t.string   "subject_type",            null: false
    t.string   "token",        limit: 60, null: false
    t.datetime "expires_at",              null: false
    t.integer  "ttl",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authem_sessions", ["expires_at", "subject_type", "subject_id"], name: "index_authem_sessions_subject", using: :btree
  add_index "authem_sessions", ["expires_at", "token"], name: "index_authem_sessions_on_expires_at_and_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                                           null: false
    t.string   "password_digest",                                 null: false
    t.string   "password_reset_token", limit: 60,                 null: false
    t.boolean  "admin",                           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "trim"
    t.string   "year"
    t.string   "vin"
    t.string   "doors"
    t.string   "engine"
    t.string   "transmission"
    t.string   "int_color"
    t.string   "ext_color"
    t.text     "description"
    t.boolean  "warranty"
    t.string   "warranty_type"
    t.boolean  "sold"
    t.boolean  "used"
    t.boolean  "featured"
    t.boolean  "new"
    t.string   "price"
    t.string   "mileage"
    t.string   "interior_type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "photos",        default: [],              array: true
  end

end
