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

ActiveRecord::Schema.define(version: 20160116183727) do

  create_table "admin_event_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_events", force: :cascade do |t|
    t.datetime "date_from"
    t.datetime "date_to"
    t.text     "descript"
    t.string   "filename"
    t.boolean  "ticker"
    t.integer  "admin_event_type_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "name"
    t.boolean  "is_registrations"
    t.string   "speaker"
    t.integer  "venue_id"
    t.integer  "admin_venue_id"
  end

  add_index "admin_events", ["admin_event_type_id"], name: "index_admin_events_on_admin_event_type_id"
  add_index "admin_events", ["admin_venue_id"], name: "index_admin_events_on_admin_venue_id"
  add_index "admin_events", ["venue_id"], name: "index_admin_events_on_venue_id"

  create_table "admin_photos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_venues", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "city_locality"
    t.integer  "postcode"
    t.string   "country"
    t.text     "remarks"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "published"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.string   "email"
    t.text     "body"
    t.integer  "source_id"
    t.string   "source_type"
    t.boolean  "approved"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "published"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_registrations", force: :cascade do |t|
    t.integer  "admin_event_id"
    t.string   "name"
    t.text     "address"
    t.integer  "postcode"
    t.string   "tel_mobile_no"
    t.string   "tel_residence"
    t.string   "email"
    t.string   "marital_status"
    t.string   "occupation"
    t.string   "gender"
    t.integer  "age"
    t.string   "race"
    t.string   "nationality"
    t.string   "introduced_thru"
    t.boolean  "meditate_before"
    t.string   "purpose_of_attending"
    t.integer  "no_of_places_or_people"
    t.boolean  "is_confirmed"
    t.text     "comments"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "user_registrations", ["admin_event_id"], name: "index_user_registrations_on_admin_event_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
