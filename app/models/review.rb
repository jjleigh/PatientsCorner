class Review < ActiveRecord::Base
	belongs_to :reviewable, :polymorphic => true
	belongs_to :patient,  :foreign_key => "user_id", :class_name => "User"
end
