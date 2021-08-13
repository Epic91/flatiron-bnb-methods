class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations
  has_many :guests, :class_name => "User", :through => :reservations

  # need validaions

  # helper method; whenever a listing is destroyed the user attached to that listing should be converted back to a regular user. that means setting the host field to false
  
end
