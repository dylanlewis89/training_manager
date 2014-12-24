class User < ActiveRecord::Base
	has_secure_password

	ROLES = ['admin', 'trainer', 'client']

	validates :username, :email, :password, :role, presence: true

	def admin?
		self.role == 'admin'
	end

	def trainer?
		self.role == 'trainer'
	end

	def client?
		self.role == 'client'
	end
end
