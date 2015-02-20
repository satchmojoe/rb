class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :form_name
      t.string :form_description
      t.string :form_tags
      t.string :form_email
      t.string :form_redirect
      t.boolean :form_redirect_enable
      t.string :form_success_message
      t.string :form_password
      t.string :form_unique_ip
      t.integer :form_frame_height
      t.boolean :form_has_css
      t.boolean :form_active
      t.integer :form_theme_id
      t.boolean :form_resume_enable
      t.boolean :form_limit_enable
      t.integer :form_limit
      t.integer :form_page_total
      t.string :form_lastpage_title
      t.string :form_submit_primary_text
      t.string :form_submit_secondary_text
      t.string :form_pagination_type
      t.boolean :form_schedule_enable
      t.date :form_schedule_start_date
      t.date :form_schedule_end_date
      t.time :form_schedule_start_hour
      t.time :form_schedule_end_hour
      t.boolean :email_entry_enable
      t.boolean :logic_field_enable

      t.timestamps
    end
  end
end
