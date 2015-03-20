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

ActiveRecord::Schema.define(version: 20150320171942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "element_options", force: :cascade do |t|
    t.integer  "form_element_id"
    t.integer  "position"
    t.string   "option"
    t.boolean  "option_is_default", default: false
    t.boolean  "live",              default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "uses_dictionary",   default: false
  end

  add_index "element_options", ["form_element_id"], name: "index_element_options_on_form_element_id", using: :btree

  create_table "element_types", force: :cascade do |t|
    t.string   "e_type",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_1", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_ 0_1"
    t.string   "element_ 1_1"
    t.string   "element_ 2_1"
    t.string   "element_ 3_1"
    t.string   "element_ 4_1"
    t.string   "element_ 5_1"
    t.string   "element_ 6_1"
    t.string   "element_ 7_1"
    t.string   "element_ 8_1"
    t.string   "element_ 9_1"
    t.string   "element_ 10_1"
  end

  create_table "form_2", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_ 0_1"
    t.string   "element_ 1_1"
    t.string   "element_ 2_1"
    t.string   "element_ 3_1"
    t.string   "element_ 4_1"
    t.string   "element_ 5_1"
    t.string   "element_ 6_1"
    t.string   "element_ 7_1"
    t.string   "element_ 8_1"
    t.string   "element_ 9_1"
    t.string   "element_ 10_1"
  end

  create_table "form_3", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_ 0_1"
    t.string   "element_ 1_1"
    t.string   "element_ 2_1"
    t.string   "element_ 3_1"
    t.string   "element_ 4_1"
    t.string   "element_ 5_1"
    t.string   "element_ 6_1"
    t.string   "element_ 7_1"
    t.string   "element_ 8_1"
    t.string   "element_ 9_1"
    t.string   "element_ 10_1"
  end

  create_table "form_4", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_ 0_1"
    t.string   "element_ 1_1"
    t.string   "element_ 2_1"
    t.string   "element_ 3_1"
    t.string   "element_ 4_1"
    t.string   "element_ 5_1"
    t.string   "element_ 6_1"
    t.string   "element_ 7_1"
    t.string   "element_ 8_1"
    t.string   "element_ 9_1"
    t.string   "element_ 10_1"
  end

  create_table "form_5", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_ 0_1"
    t.string   "element_ 1_1"
    t.string   "element_ 2_1"
    t.string   "element_ 3_1"
    t.string   "element_ 4_1"
    t.string   "element_ 5_1"
    t.string   "element_ 6_1"
    t.string   "element_ 7_1"
    t.string   "element_ 8_1"
    t.string   "element_ 9_1"
    t.string   "element_ 10_1"
  end

  create_table "form_6", force: :cascade do |t|
    t.boolean  "enabled"
    t.string   "resume_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element_38_1"
    t.string   "element_39_1"
    t.string   "element_40_1"
    t.string   "element_1_1"
    t.string   "element_2_1"
    t.string   "element_3_1"
    t.string   "element_4_1"
    t.string   "element_5_1"
    t.string   "element_6_1"
    t.string   "element_7_1"
    t.string   "element_8_16"
    t.string   "element_8_17"
    t.string   "element_8_18"
    t.string   "element_8_19"
    t.string   "element_8_110"
    t.string   "element_8_111"
    t.string   "element_8_112"
    t.string   "element_8_113"
    t.string   "element_8_114"
    t.string   "element_8_115"
    t.string   "element_8_116"
    t.string   "element_8_117"
    t.string   "element_8_118"
    t.string   "element_8_119"
    t.string   "element_8_120"
    t.string   "element_8_121"
    t.string   "element_8_122"
    t.string   "element_8_123"
    t.string   "element_9_1"
    t.string   "element_10_16"
    t.string   "element_10_17"
    t.string   "element_10_18"
    t.string   "element_10_19"
    t.string   "element_11_1"
    t.string   "element_12_1"
    t.string   "element_12_2"
    t.string   "element_12_3"
    t.string   "element_12_4"
    t.string   "element_12_5"
    t.string   "element_12_6"
    t.string   "element_13_1"
    t.string   "element_14_1"
    t.string   "element_14_2"
    t.string   "element_14_3"
    t.string   "element_15_1"
    t.string   "element_16_1"
    t.string   "element_17_1"
    t.string   "element_18_1"
    t.string   "element_18_2"
    t.string   "element_18_3"
    t.string   "element_18_4"
    t.string   "element_18_5"
    t.string   "element_18_6"
    t.string   "element_18_7"
    t.string   "element_18_8"
    t.string   "element_18_9"
    t.string   "element_18_10"
    t.string   "element_18_11"
    t.string   "element_19_1"
    t.string   "element_20_1"
    t.string   "element_21_1"
    t.string   "element_22_1"
    t.string   "element_23_1"
    t.string   "element_24_1"
    t.string   "element_25_1"
    t.string   "element_26_1"
    t.string   "element_27_1"
    t.string   "element_28_1"
    t.string   "element_29_1"
    t.string   "element_30_1"
    t.string   "element_31_1"
    t.string   "element_32_1"
    t.string   "element_33_1"
    t.string   "element_34_1"
    t.string   "element_35_1"
    t.string   "element_36_1"
    t.string   "element_37_1"
  end

  create_table "form_element_dictionary_options", force: :cascade do |t|
    t.integer  "form_id"
    t.integer  "form_element_id"
    t.integer  "element_option_id"
    t.integer  "export_value"
    t.string   "variable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "form_element_dictionary_options", ["element_option_id"], name: "index_form_element_dictionary_options_on_element_option_id", using: :btree
  add_index "form_element_dictionary_options", ["form_element_id"], name: "index_form_element_dictionary_options_on_form_element_id", using: :btree
  add_index "form_element_dictionary_options", ["form_id"], name: "index_form_element_dictionary_options_on_form_id", using: :btree

  create_table "form_elements", force: :cascade do |t|
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
    t.boolean  "hidden",                           default: false
    t.boolean  "warn_if_empty",                    default: false
  end

  create_table "forms", force: :cascade do |t|
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

  create_table "permissions", force: :cascade do |t|
    t.integer  "form_id"
    t.integer  "user_id"
    t.boolean  "edit_form",    default: false
    t.boolean  "edit_entries", default: false
    t.boolean  "view_entries", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["form_id"], name: "index_permissions_on_form_id", using: :btree
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
