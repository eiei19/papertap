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

ActiveRecord::Schema.define(version: 20160402063140) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "", null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "password_digest",        limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "clients", ["created_at"], name: "index_clients_on_created_at", using: :btree
  add_index "clients", ["deleted_at"], name: "index_clients_on_deleted_at", using: :btree
  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "inputters", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.string   "email",      limit: 255, default: "", null: false
    t.string   "fbid",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "inputters", ["created_at"], name: "index_inputters_on_created_at", using: :btree
  add_index "inputters", ["deleted_at"], name: "index_inputters_on_deleted_at", using: :btree
  add_index "inputters", ["email"], name: "index_inputters_on_email", unique: true, using: :btree
  add_index "inputters", ["fbid"], name: "index_inputters_on_fbid", unique: true, using: :btree

end
