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

ActiveRecord::Schema.define(version: 20181117160136) do

  create_table "agents", force: :cascade do |t|
    t.string   "orgName"
    t.integer  "regNo"
    t.string   "email"
    t.string   "fName"
    t.string   "lName"
    t.string   "locality"
    t.string   "city"
    t.integer  "pinCode"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "agents", ["remember_token"], name: "index_agents_on_remember_token"

  create_table "bookings", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "customer_name"
    t.string   "customer_contact"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  en

  create_table "vehicles", force: :cascade do |t|
    t.string   "category"
    t.string   "model"
    t.string   "manufacturer"
    t.boolean  "isAc"
    t.integer  "cost"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
