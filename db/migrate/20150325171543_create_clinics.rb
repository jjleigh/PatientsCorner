class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.text :address_1
      t.text :address_2
      t.text :address_3
      t.string :name
      t.string :province

      t.timestamps null: false
    end
  end
end
