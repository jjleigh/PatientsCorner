class Patient < User
	has_many :reviews, dependent: :destroy
end
