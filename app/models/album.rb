class Album < ActiveRecord::Base

	has_many :tracks
	has_many :reviews

	belongs_to :artist
	belongs_to :user
	
end
