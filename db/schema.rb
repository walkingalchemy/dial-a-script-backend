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

ActiveRecord::Schema.define(version: 20180222201331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.integer "duration"
    t.text "note"
    t.string "outcome"
    t.string "who"
    t.bigint "user_id"
    t.bigint "phone_id"
    t.bigint "script_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_id"], name: "index_calls_on_phone_id"
    t.index ["script_id"], name: "index_calls_on_script_id"
    t.index ["user_id"], name: "index_calls_on_user_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "title"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_offices_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_scripts", force: :cascade do |t|
    t.bigint "script_id"
    t.bigint "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_id"], name: "index_phone_scripts_on_phone_id"
    t.index ["script_id"], name: "index_phone_scripts_on_script_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "digits"
    t.boolean "status"
    t.bigint "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_phones_on_office_id"
  end

  create_table "scripts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scripts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "calls", "phones"
  add_foreign_key "calls", "scripts"
  add_foreign_key "calls", "users"
  add_foreign_key "offices", "organizations"
  add_foreign_key "phone_scripts", "phones"
  add_foreign_key "phone_scripts", "scripts"
  add_foreign_key "phones", "offices"
  add_foreign_key "scripts", "users"
end
