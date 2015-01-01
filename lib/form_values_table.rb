class FormValuesTable < ActiveRecord::Migration

  def self.create_values_table form_id
    binding.pry
    if form_id.class == Fixnum
      create_table ('form_' + form_id.to_s).to_sym, id: false do |t|
        t.primary_key :entry_id
        t.boolean     :enabled
        t.string      :resume_key

        t.timestamps
      end
    end
  end
end
