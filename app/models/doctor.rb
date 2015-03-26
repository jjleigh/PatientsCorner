class Doctor < User
	has_many :patients, through: :appointments
	has_many :reviews, :as => :reviewable
	has_many :appointments, dependent: :destroy
	has_many :categories
	belongs_to :clinic
end
