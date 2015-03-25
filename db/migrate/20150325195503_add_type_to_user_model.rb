class AddTypeToUserModel < ActiveRecord::Migration

	def up
		add_column :users, :type, :string
	end

	def down
		add_column :users, :type, :string
	end
end
