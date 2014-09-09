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

ActiveRecord::Schema.define(version: 20140908195957) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.text     "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["brand_id"], name: "index_cars_on_brand_id"

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.decimal  "price",        precision: 8, scale: 2
    t.text     "description"
    t.string   "manufacturer"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["type_id"], name: "index_items_on_type_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["car_id"], name: "index_products_on_car_id"

  create_table "types", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["product_id"], name: "index_types_on_product_id"

end
