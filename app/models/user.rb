class User < ActiveRecord::Base

	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, confirm: true, length: { minimum: 8 }

	has_secure_password
	
end
