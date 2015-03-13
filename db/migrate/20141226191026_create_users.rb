class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_email
      t.string :password_digest
      t.string :user_fullname
      t.boolean :priv_administer
      t.boolean :priv_new_forms
      t.date :last_login_date
      t.string :cookie_hash
      t.boolean :enabled

      t.timestamps
    end
  end
end
