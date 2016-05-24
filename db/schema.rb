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

ActiveRecord::Schema.define(version: 20160524003651) do

  create_table "projects", force: :cascade do |t|
    t.integer  "user_exam_id", limit: 8
    t.integer  "exam_method"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tabflowers", force: :cascade do |t|
    t.string   "fName"
    t.string   "fHanyi"
    t.float    "fSPrice"
    t.string   "fImg"
    t.string   "fDetails"
    t.string   "fCailiao"
    t.string   "fBaoZ"
    t.float    "fPprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tabusers", force: :cascade do |t|
    t.string   "uName"
    t.string   "uPass"
    t.string   "uTname"
    t.string   "uAddress"
    t.string   "uCode"
    t.string   "uPhone"
    t.string   "uEmail"
    t.string   "uAddressType"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_infos", force: :cascade do |t|
    t.string   "account"
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
