class AddForeignKeyAndPhoneNumberToClinicTable < ActiveRecord::Migration
  def change
  	add_column :clinics, :phone_number, :string
  	add_column :clinics, :category_id, :string
  end
end
