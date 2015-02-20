class CreateElementTypes < ActiveRecord::Migration
  def change
    create_table :element_types do |t|
      t.string :element_type, null: false

      t.timestamps
    end
  end
end
