class Appointment < ActiveRecord::Base
	belongs_to :patient, :class_name => "User"
	belongs_to :doctor, :class_name => "User"
end
