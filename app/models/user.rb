class User < ApplicationRecord
	has_many :pedagogy_innovations
	
	def self.Authenticate(email, password)
		User.find_by(email: email, password: password)
	end
end
