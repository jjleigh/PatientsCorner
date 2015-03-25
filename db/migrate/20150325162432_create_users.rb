class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :address_1
      t.text :address_2
      t.text :address_3

      t.timestamps null: false
    end
  end
end
