class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude
  reverse_geocoded_by :latitude, :longitude, :address => :address
  after_validation :reverse_geocode  
end
