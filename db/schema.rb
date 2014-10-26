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

ActiveRecord::Schema.define(version: 20141024015712) do

  create_table "ip4_addresses", force: true do |t|
    t.integer  "address"
    t.integer  "ip4_network_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ip4_addresses", ["address"], name: "index_ip4_addresses_on_address", unique: true
  add_index "ip4_addresses", ["ip4_network_id"], name: "index_ip4_addresses_on_ip4_network_id"

  create_table "ip4_addresses_locations", id: false, force: true do |t|
    t.integer "ip4_address_id", null: false
    t.integer "location_id",    null: false
  end

  add_index "ip4_addresses_locations", ["location_id", "ip4_address_id"], name: "ip4_address_location", unique: true

  create_table "ip4_networks", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "mask"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ip4_networks", ["name"], name: "index_ip4_networks_on_name"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "org_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["name"], name: "index_locations_on_name"
  add_index "locations", ["org_id"], name: "index_locations_on_org_id"

  create_table "orgs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgs", ["name"], name: "index_orgs_on_name", unique: true

end
