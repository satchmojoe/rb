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

ActiveRecord::Schema.define(version: 20150130145356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "element_options", primary_key: "eod_id", force: true do |t|
    t.integer  "form_id"
    t.integer  "form_element_id"
    t.integer  "position"
    t.string   "option"
    t.boolean  "option_is_default"
    t.boolean  "live"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "uses_dictrionary"
  end

  add_index "element_options", ["form_element_id"], name: "index_element_options_on_form_element_id", using: :btree
  add_index "element_options", ["form_id"], name: "index_element_options_on_form_id", using: :btree

  create_table "element_types", primary_key: "et_id", force: true do |t|
    t.string   "element_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_7", primary_key: "entry_id", force: true do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_8", primary_key: "entry_id", force: true do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_elements", primary_key: "fe_id", force: true do |t|
    t.integer  "form_id",                                          null: false
    t.integer  "element_id",                                       null: false
    t.string   "element_name",                                     null: false
    t.string   "element_title"
    t.string   "element_tool_tip"
    t.integer  "element_height"
    t.boolean  "element_is_unique",                default: false, null: false
    t.boolean  "element_is_required",              default: false, null: false
    t.boolean  "element_is_private",               default: false, null: false
    t.integer  "element_type_id",                                  null: false
    t.integer  "element_position"
    t.string   "element_default_value"
    t.integer  "element_range_min"
    t.integer  "element_range_max"
    t.boolean  "element_choice_has_other",         default: false, null: false
    t.string   "element_choice_other_label"
    t.boolean  "element_address_us_only",          default: false, null: false
    t.boolean  "element_date_enable_range",        default: false, null: false
    t.datetime "element_date_range_min"
    t.datetime "element_date_range_max"
    t.boolean  "element_file_enable_type_limit",   default: false, null: false
    t.string   "element_file_block_or_allow"
    t.string   "element_file_type_list"
    t.boolean  "element_file_as_attachment",       default: false, null: false
    t.boolean  "element_file_enable_multi_upload", default: false, null: false
    t.integer  "element_file_max_selection",       default: 1
    t.boolean  "element_file_enable_size_limit",   default: false, null: false
    t.integer  "element_file_size_max",            default: 1
    t.boolean  "element_matrix_allow_multiselect", default: true,  null: false
    t.integer  "element_matrix_parent_id"
    t.string   "element_submit_primary_text"
    t.string   "element_submit_secondary_text"
    t.integer  "element_page_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
