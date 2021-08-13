class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"

  # validations 
  # should gave a description, rating and reservation
  # reviews should only be created on reservations that exist and have already happened.

end
