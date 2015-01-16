class CreateElementTypes < ActiveRecord::Migration
  def change
    create_table :element_types, id: false do |t|
      t.primary_key :et_id
      t.string :element_type, null: false

      t.timestamps
    end
  end
end
