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

ActiveRecord::Schema.define(:version => 20130408053714) do

  create_table "advertisements", :force => true do |t|
    t.integer  "advertisement_status_id"
    t.text     "values_xml"
    t.boolean  "paid"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.integer  "price"
  end

  add_index "advertisements", ["category_id"], :name => "index_advertisements_on_category_id"
  add_index "advertisements", ["user_id"], :name => "index_advertisements_on_user_id"

  create_table "bids", :force => true do |t|
    t.integer  "price"
    t.integer  "user_id"
    t.integer  "advertisement_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "bids", ["advertisement_id"], :name => "index_bids_on_advertisement_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "parent_id"
  end

  create_table "category_hierarchies", :id => false, :force => true do |t|
    t.integer "ancestor_id",   :null => false
    t.integer "descendant_id", :null => false
    t.integer "generations",   :null => false
  end

  add_index "category_hierarchies", ["ancestor_id", "descendant_id"], :name => "index_category_hierarchies_on_ancestor_id_and_descendant_id", :unique => true
  add_index "category_hierarchies", ["descendant_id"], :name => "index_category_hierarchies_on_descendant_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "salutation"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "province"
    t.string   "phone"
    t.string   "url"
    t.integer  "longitude"
    t.integer  "latitude"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
