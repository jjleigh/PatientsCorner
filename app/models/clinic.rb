class Clinic < ActiveRecord::Base
	has_many :reviews, :as => :reviewable
	has_many :categories
	has_many :doctors, :foreign_key => "user_id", :class_name => "User"
	belongs_to :clinic_admin,  :foreign_key => "user_id", :class_name => "User"
end
