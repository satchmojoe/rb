class CreateElementOptions < ActiveRecord::Migration
  def change
    create_table :element_options do |t|
      t.references :form, index: true
      t.references :form_element, index: true
      t.integer :position
      t.string :option
      t.boolean :option_is_default
      t.boolean :live

      t.timestamps
    end
  end
end
