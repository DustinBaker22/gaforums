class User < ActiveRecord::Base
	has_secure_password
  has_many :boards

	def admin?
		self.role == 'admin'
	end



end
