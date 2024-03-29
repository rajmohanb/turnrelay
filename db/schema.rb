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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130506224855) do

  create_table "allocations", :force => true do |t|
    t.string   "username"
    t.string   "realm"
    t.integer  "req_lifetime"
    t.integer  "allotted_lifetime"
    t.integer  "bandwidth_used"
    t.datetime "alloc_at"
    t.datetime "dealloc_at"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "user_id"
    t.integer  "alloc_handle",      :limit => 8
    t.integer  "ingress_data"
    t.integer  "egress_data"
    t.integer  "total_relay"
    t.string   "protocol"
  end

  add_index "allocations", ["user_id"], :name => "index_allocations_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "max_allocs"
    t.integer  "max_concur_allocs"
    t.string   "realm"
    t.string   "username"
    t.string   "turn_secret"
    t.integer  "def_lifetime"
    t.integer  "max_bandwidth"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "allocs"
    t.integer  "active_allocs"
    t.integer  "bandwidth_used"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
