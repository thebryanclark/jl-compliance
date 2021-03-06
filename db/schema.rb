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

ActiveRecord::Schema.define(:version => 20130310013830) do

  create_table "equipment", :force => true do |t|
    t.string   "title",                   :null => false
    t.integer  "subcontractor_at_job_id", :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.text     "notes"
  end

  create_table "jobs", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "photoable_id"
    t.integer  "photoable_type",     :limit => 255
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "caption"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "scopes", :force => true do |t|
    t.string   "title",                   :null => false
    t.integer  "subcontractor_at_job_id", :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.text     "notes"
  end

  create_table "subcontractor_at_jobs", :force => true do |t|
    t.string   "foreman_name"
    t.boolean  "foreman_directs_work",     :default => false, :null => false
    t.boolean  "equipment_labeled",        :default => false, :null => false
    t.boolean  "employees_work_elsewhere", :default => false, :null => false
    t.integer  "employee_count"
    t.text     "notes"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "job_id",                                      :null => false
    t.boolean  "being_supervised",         :default => false, :null => false
    t.integer  "subcontractor_id",                            :null => false
    t.string   "supervised_by"
    t.boolean  "not_easily_removed",       :default => false, :null => false
    t.text     "employee_names"
  end

  create_table "subcontractor_trucks", :force => true do |t|
    t.string   "plate",            :null => false
    t.string   "driver_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "subcontractor_id", :null => false
    t.integer  "job_id",           :null => false
  end

  create_table "subcontractors", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "supplier_trucks", :force => true do |t|
    t.string   "plate",         :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "job_id",        :null => false
    t.string   "supplier_name", :null => false
  end

  create_table "tickets", :force => true do |t|
    t.string   "number",            :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "supplier_truck_id", :null => false
    t.datetime "approved_date"
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
