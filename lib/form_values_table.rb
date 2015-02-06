class FormValuesTable < ActiveRecord::Migration

  def self.create_values_table form_id
    if form_id.class == Fixnum and Form.where(form_id: form_id).count == 0
      create_table ('form_' + form_id.to_s).to_sym, id: false do |t|
        t.primary_key :entry_id
        t.boolean     :enabled
        t.string      :resume_key

        t.timestamps
      end
    end
  end
end
