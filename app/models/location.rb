class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name
  
  has_many :user_locations
  has_many :users, :through => :user_locations
  reverse_geocoded_by :latitude, :longitude, :address => :address
  
  after_validation :reverse_geocode  
  
end
