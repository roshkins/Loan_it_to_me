class Home < ActiveRecord::Base
  attr_accessible :city, :latitude, :longitude, :state, :street, :zipcode
  # attr_accessor :street, :city, :state, :zipcode
  validate :latitude, :longitude, presence: true

  has_one :user
  has_many :items
  
end
