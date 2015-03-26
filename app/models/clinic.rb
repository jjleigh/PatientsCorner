class Clinic < ActiveRecord::Base
	has_many :reviews, :as => :reviewable
	has_many :categories
	has_many :doctors
	belongs_to :clinic_admin
end
