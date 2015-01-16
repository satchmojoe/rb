class CreateFormElements < ActiveRecord::Migration
  def change
    create_table :form_elements, id: false do |t|
      t.primary_key :fe_id
      t.integer     :form_id, null: false
      t.integer     :element_id, null: false
      t.string      :element_name, null: false
      t.string      :element_title
      t.string      :element_tool_tip
      t.integer     :element_height
      t.boolean     :element_is_unique, default: false, null: false
      t.boolean     :element_is_required, default: false, null: false
      t.boolean     :element_is_private, default: false, null: false
      t.integer     :element_type_id, null: false
      t.integer     :element_position
      t.string      :element_default_value
      t.integer     :element_range_min
      t.integer     :element_range_max
      t.boolean     :element_choice_has_other, default: false, null: false
      t.string      :element_choice_other_label
      t.boolean     :element_address_us_only, default: false, null: false
      t.boolean     :element_date_enable_range, default: false, null: false
      t.datetime    :element_date_range_min
      t.datetime    :element_date_range_max
      t.boolean     :element_file_enable_type_limit, default: false, null: false
      t.string      :element_file_block_or_allow
      t.string      :element_file_type_list
      t.boolean     :element_file_as_attachment, default: false, null: false
      t.boolean     :element_file_enable_multi_upload, default: false, null: false
      t.integer     :element_file_max_selection, default: 1
      t.boolean     :element_file_enable_size_limit, default: false, null: false
      t.integer     :element_file_size_max, default: 1
      t.boolean     :element_matrix_allow_multiselect, default: true, null: false
      t.integer     :element_matrix_parent_id
      t.string      :element_submit_primary_text
      t.string      :element_submit_secondary_text
      t.integer     :element_page_number

      t.timestamps
    end
  end
end
