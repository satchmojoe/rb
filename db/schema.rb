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

ActiveRecord::Schema.define(version: 20141229234705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", primary_key: "form_id", force: true do |t|
    t.string   "form_name"
    t.string   "form_description"
    t.string   "form_tags"
    t.string   "form_email"
    t.string   "form_redirect"
    t.boolean  "form_redirect_enable"
    t.string   "form_success_message"
    t.string   "form_password"
    t.string   "form_unique_ip"
    t.integer  "form_frame_height"
    t.boolean  "form_has_css"
    t.boolean  "form_active"
    t.integer  "form_theme_id"
    t.boolean  "form_resume_enable"
    t.boolean  "form_limit_enable"
    t.integer  "form_limit"
    t.integer  "form_page_total"
    t.string   "form_lastpage_title"
    t.string   "form_submit_primary_text"
    t.string   "form_submit_secondary_text"
    t.string   "form_pagination_type"
    t.boolean  "form_schedule_enable"
    t.date     "form_schedule_start_date"
    t.date     "form_schedule_end_date"
    t.time     "form_schedule_start_hour"
    t.time     "form_schedule_end_hour"
    t.boolean  "email_entry_enable"
    t.boolean  "logic_field_enable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", primary_key: "permission_id", force: true do |t|
    t.integer  "form_id"
    t.integer  "user_id"
    t.boolean  "edit_form"
    t.boolean  "edit_entries"
    t.boolean  "view_entries"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["form_id"], name: "index_permissions_on_form_id", using: :btree
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree

  create_table "users", primary_key: "user_id", force: true do |t|
    t.string   "user_email"
    t.string   "password_digest"
    t.string   "user_fullname"
    t.boolean  "priv_administer"
    t.boolean  "priv_new_forms"
    t.date     "last_login_date"
    t.string   "cookie_hash"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_ip_address"
  end

end
