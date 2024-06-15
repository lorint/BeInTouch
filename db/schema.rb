# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_15_133100) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "dt", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "pal_passion_id", null: false
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_interactions_on_event_id"
    t.index ["pal_passion_id"], name: "index_interactions_on_pal_passion_id"
  end

  create_table "occasions", force: :cascade do |t|
    t.string "name"
    t.date "dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pal_passions", force: :cascade do |t|
    t.bigint "pal_id", null: false
    t.bigint "passion_id", null: false
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pal_id"], name: "index_pal_passions_on_pal_id"
    t.index ["passion_id"], name: "index_pal_passions_on_passion_id"
  end

  create_table "pals", force: :cascade do |t|
    t.bigint "friender_id"
    t.bigint "friendee_id"
    t.bigint "relation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendee_id"], name: "index_pals_on_friendee_id"
    t.index ["friender_id"], name: "index_pals_on_friender_id"
    t.index ["relation_id"], name: "index_pals_on_relation_id"
  end

  create_table "passions", force: :cascade do |t|
    t.string "name"
    t.bigint "created_by_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_id"], name: "index_passions_on_created_by_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.float "latitude"
    t.float "longitude"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_occasions", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "occasion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occasion_id"], name: "index_person_occasions_on_occasion_id"
    t.index ["person_id"], name: "index_person_occasions_on_person_id"
  end

  create_table "relations", force: :cascade do |t|
    t.string "name"
  end

  create_table "reminders", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "person_occasion_id", null: false
    t.integer "remind_day_offset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_reminders_on_person_id"
    t.index ["person_occasion_id"], name: "index_reminders_on_person_occasion_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "interactions", "events"
  add_foreign_key "interactions", "pal_passions"
  add_foreign_key "pal_passions", "pals"
  add_foreign_key "pal_passions", "passions"
  add_foreign_key "pals", "people", column: "friendee_id"
  add_foreign_key "pals", "people", column: "friender_id"
  add_foreign_key "pals", "relations"
  add_foreign_key "passions", "people", column: "created_by_id"
  add_foreign_key "person_occasions", "occasions"
  add_foreign_key "person_occasions", "people"
  add_foreign_key "reminders", "people"
  add_foreign_key "reminders", "person_occasions"
end
