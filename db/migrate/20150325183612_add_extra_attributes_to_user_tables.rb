class AddExtraAttributesToUserTables < ActiveRecord::Migration
  def change
  	add_column :users, :clinic_id, :integer
  	add_column :users, :category_id, :integer
  	add_column :users, :phone_number, :integer
  end
end
