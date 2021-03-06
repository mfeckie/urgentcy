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

ActiveRecord::Schema.define(version: 20130913131127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "bookings", force: true do |t|
    t.integer "patient_id"
    t.integer "urgency_category_id"
    t.integer "surgical_specialty_id"
    t.integer "surgical_procedure_id"
    t.integer "surgeon_id"
    t.integer "location_id"
    t.integer "required_minutes"
    t.integer "required_hours"
    t.string  "notice_required"
    t.string  "availability"
    t.string  "booking_status"
  end

  add_index "bookings", ["booking_status"], name: "index_bookings_on_booking_status", using: :btree
  add_index "bookings", ["location_id"], name: "index_bookings_on_location_id", using: :btree
  add_index "bookings", ["patient_id"], name: "index_bookings_on_patient_id", using: :btree
  add_index "bookings", ["surgeon_id"], name: "index_bookings_on_surgeon_id", using: :btree
  add_index "bookings", ["surgical_procedure_id"], name: "index_bookings_on_surgical_procedure_id", using: :btree
  add_index "bookings", ["surgical_specialty_id"], name: "index_bookings_on_surgical_specialty_id", using: :btree
  add_index "bookings", ["urgency_category_id"], name: "index_bookings_on_urgency_category_id", using: :btree

  create_table "locations", force: true do |t|
    t.string "name"
    t.string "ordering_number"
  end

  add_index "locations", ["name"], name: "index_locations_on_name", unique: true, using: :btree

  create_table "medical_conditions", force: true do |t|
    t.string "name"
  end

  add_index "medical_conditions", ["name"], name: "index_medical_conditions_on_name", unique: true, using: :btree

  create_table "patient_medical_conditions", force: true do |t|
    t.integer "patient_id"
    t.integer "medical_condition_id"
  end

  create_table "patients", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mrn"
    t.date   "date_of_birth"
    t.string "ward_location"
  end

  add_index "patients", ["mrn"], name: "index_patients_on_mrn", using: :btree

  create_table "surgeons", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone_number"
    t.string   "mobile_number"
    t.string   "pager"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surgical_procedures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surgical_procedures", ["name"], name: "index_surgical_procedures_on_name", unique: true, using: :btree

  create_table "surgical_specialties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surgical_specialties", ["name"], name: "index_surgical_specialties_on_name", unique: true, using: :btree

  create_table "urgency_categories", force: true do |t|
    t.string  "name"
    t.integer "number"
    t.integer "acceptable_wait_minutes"
    t.integer "acceptable_wait_hours"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
