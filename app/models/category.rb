class Category < ActiveRecord::Base
	belongs_to :clinic
	belongs_to :doctor, :foreign_key => "user_id", :class_name => "User"
end
