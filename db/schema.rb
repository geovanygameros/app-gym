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

ActiveRecord::Schema.define(version: 20160929185325) do

  create_table "members", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "last_name",  limit: 255
    t.boolean  "gender",     limit: 1
    t.string   "email",      limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "birth_date",             null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "membership", limit: 4, null: false
    t.integer  "amount",     limit: 4, null: false
    t.date     "validity",             null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "member_id",  limit: 4, null: false
  end

  add_index "payments", ["member_id"], name: "index_payments_on_member_id", using: :btree

end