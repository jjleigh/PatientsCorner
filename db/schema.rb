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

ActiveRecord::Schema.define(version: 20150326171808) do

  create_table "appointments", force: :cascade do |t|
    t.text     "reason"
    t.string   "name"
    t.datetime "date"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patient_id"
    t.integer  "doctor_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "clinic_id"
    t.integer  "user_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.text     "address_1"
    t.text     "address_2"
    t.text     "address_3"
    t.string   "name"
    t.string   "province"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "phone_number"
    t.integer  "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.string   "recommendation_level"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "address_1"
    t.text     "address_2"
    t.text     "address_3"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "type"
    t.integer  "clinic_id"
    t.integer  "category_id"
    t.integer  "phone_number"
  end

end
