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

ActiveRecord::Schema.define(version: 20161129220738) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "last_name",  limit: 255
    t.boolean  "gender",     limit: 1
    t.string   "email",      limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "activity",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "last_name",          limit: 255
    t.boolean  "gender",             limit: 1
    t.string   "email",              limit: 255
    t.integer  "status",             limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.date     "birth_date",                     null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "amount",     limit: 4, null: false
    t.date     "validity",             null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "member_id",  limit: 4, null: false
    t.integer  "membership", limit: 4
  end

  add_index "payments", ["member_id"], name: "index_payments_on_member_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "product_id", limit: 4
  end

  add_index "purchases", ["product_id"], name: "index_purchases_on_product_id", using: :btree

  add_foreign_key "purchases", "products"
end
