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

ActiveRecord::Schema.define(version: 20141102195827) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "agents", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "org_id"
    t.string   "password_digest"
    t.string   "qtopic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agents", ["org_id"], name: "index_agents_on_org_id"

  create_table "ip4_addresses", force: true do |t|
    t.integer  "address"
    t.integer  "ip4_network_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ip4_addresses", ["address"], name: "index_ip4_addresses_on_address", unique: true
  add_index "ip4_addresses", ["ip4_network_id"], name: "index_ip4_addresses_on_ip4_network_id"

  create_table "ip4_networks", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "address"
    t.integer  "mask"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ip4_networks", ["name", "address"], name: "index_ip4_networks_on_name_and_address"

  create_table "ip4_networks_locations", id: false, force: true do |t|
    t.integer "ip4_network_id", null: false
    t.integer "location_id",    null: false
  end

  add_index "ip4_networks_locations", ["ip4_network_id", "location_id"], name: "ip4_network_location", unique: true

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
    t.string   "qtopic"
  end

  add_index "orgs", ["name"], name: "index_orgs_on_name", unique: true

end
