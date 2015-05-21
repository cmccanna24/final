class Album < ActiveRecord::Base

	has_many :tracks
	has_many :reviews

	belongs_to :artist
	belongs_to :user

	validates :artist_id, :presence => true
	validates :title, :presence => true
	validates :year, :presence => true
	validates :title, :presence => true
	
end
