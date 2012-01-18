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

ActiveRecord::Schema.define(:version => 20120118140534) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.string   "ref"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns_scripts", :id => false, :force => true do |t|
    t.integer "campaign_id"
    t.integer "script_id"
  end

  add_index "campaigns_scripts", ["campaign_id", "script_id"], :name => "index_campaigns_scripts_on_campaign_id_and_script_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_scripts", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "script_id"
  end

  add_index "events_scripts", ["event_id", "script_id"], :name => "index_events_scripts_on_event_id_and_script_id"

  create_table "scripts", :force => true do |t|
    t.text     "content",    :limit => 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

end
