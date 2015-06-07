class User < ActiveRecord::Base

	has_secure_password
	
	has_many :albums
	has_many :reviews

	validates :username, :presence => true, :uniqueness => true
	validates :password, :presence => true
	
end
