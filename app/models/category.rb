class Category < ActiveRecord::Base
	belongs_to :clinic
	belongs_to :doctor
end
