class Tag < ActiveRecord::Base

  has_many :albums
  # has_one :score, :through => :albums
	validates :name, :presence => true, :uniqueness => true

end
