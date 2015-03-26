class AddPhoneNumberToClinicTable < ActiveRecord::Migration
  def change
  	add_column :clinics, :phone_number, :string
  end
end
