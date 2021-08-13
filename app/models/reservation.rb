class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  # validations

  def checkin

  end

  def checkout

  end

  def duration
    # the duration in days
  end

  def total_price
    # returns the price using the duration and the price per day of the listing
  end

end
