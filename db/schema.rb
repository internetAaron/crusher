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

ActiveRecord::Schema.define(version: 20150601230154) do

  create_table "calculators", force: true do |t|
    t.string   "name"
    t.boolean  "featured"
    t.integer  "category_id"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horizontal_shaft_impact_crushers", force: true do |t|
    t.string   "name"
    t.decimal  "drive_diameter",  precision: 10, scale: 2
    t.decimal  "driven_diameter", precision: 10, scale: 2
    t.integer  "rpm"
    t.integer  "roto_diameter"
    t.integer  "shaft_rpm"
    t.integer  "tip_speed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "supervisor"
    t.string   "supervisor_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_vibrating_grizzlies", force: true do |t|
    t.decimal  "nominal_opening"
    t.decimal  "grizzly_width"
    t.decimal  "grizzly_length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "column_name"
    t.integer  "location_id"
  end

  create_table "vertical_shaft_impact_crushers", force: true do |t|
    t.decimal  "drive_diameter"
    t.decimal  "driven_diameter"
    t.decimal  "motor_rpm"
    t.decimal  "rotor_diameter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "column_name"
    t.string   "name"
    t.integer  "location_id"
  end

  create_table "vibrating_grizzlies", force: true do |t|
    t.string   "nominal_opening"
    t.string   "decimal"
    t.string   "grizzly_width"
    t.string   "grizzly_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
