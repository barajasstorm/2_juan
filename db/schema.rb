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

ActiveRecord::Schema.define(version: 20160706022429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventarios", force: :cascade do |t|
    t.integer  "item",        null: false
    t.integer  "size"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operacions", force: :cascade do |t|
    t.string  "worker"
    t.integer "trabajadore_id"
    t.integer "inventario_id"
  end

  add_index "operacions", ["inventario_id"], name: "index_operacions_on_inventario_id", using: :btree
  add_index "operacions", ["trabajadore_id"], name: "index_operacions_on_trabajadore_id", using: :btree

  create_table "trabajadores", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  add_foreign_key "operacions", "inventarios"
  add_foreign_key "operacions", "trabajadores"
end
