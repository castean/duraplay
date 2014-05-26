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

ActiveRecord::Schema.define(version: 20140519202310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.string   "name"
    t.integer  "plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "width_mts"
    t.float    "length_mts"
    t.integer  "product_id"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "second_lastname"
    t.integer  "company_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faces", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "framing_saws", force: true do |t|
    t.integer  "product_id"
    t.integer  "quality_id"
    t.integer  "dimension_id"
    t.string   "batch"
    t.integer  "sheet"
    t.string   "responsible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "thickness_id"
    t.integer  "status_id"
    t.float    "cubic_meters"
    t.integer  "plant_id"
    t.integer  "area_id"
  end

  create_table "plants", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "procedures", force: true do |t|
    t.string   "name"
    t.string   "link_address"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plant_id"
    t.integer  "brand_id"
    t.integer  "quality_id"
    t.integer  "face_id"
    t.string   "covering_one"
    t.string   "covering_two"
    t.integer  "thickness_id"
    t.integer  "dimension_id"
    t.integer  "thicknesscode"
    t.integer  "dimensioncode"
    t.string   "code_thickness"
    t.string   "code_dimension"
  end

  create_table "qualities", force: true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "quality_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "quality_classes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "saw_logs_classes", force: true do |t|
    t.integer  "saw_log_class_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "saw_logs_receipts", force: true do |t|
    t.integer  "ticket_id"
    t.integer  "saw_log_class_id"
    t.float    "low_diameter"
    t.float    "high_diameter"
    t.float    "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thicknesses", force: true do |t|
    t.string   "name"
    t.float    "inches"
    t.float    "milimiter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dimension_id"
    t.string   "reference_code"
  end

  create_table "user_sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles"
    t.integer  "employee_id"
  end

  create_table "zones", force: true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
