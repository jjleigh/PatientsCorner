class AddForeignKeysToCategoryTable < ActiveRecord::Migration
  def change
  	add_column :categories, :clinic_id, :integer
  	add_column :categories, :user_id, :integer
  end
end
