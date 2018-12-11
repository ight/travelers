class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  module Status
  	PRIVATE = 0
  	PUBLIC = 1
  	SHARED = 2
  end
end
