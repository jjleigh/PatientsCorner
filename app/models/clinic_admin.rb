class ClinicAdmin < User
	has_many :clinics, dependent: :destroy
end
