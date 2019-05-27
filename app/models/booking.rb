class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :celebrity
  BOOKING_STATUS = ['accepted', 'pending', 'cancelled', 'completed']
  validates :status inclusion: { in: BOOKING_STATUS }
  validates :status, :duration, :rate_per_hour, presence: true
  validates rate_per_hour, numericaltity: { only_integer: true }
  validates rate_per_hour, numericaltity: { greater_than_or_equal_to: 1 }
end
