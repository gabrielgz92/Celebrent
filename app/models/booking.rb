class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :celebrity
  BOOKING_STATUS = ['Accepted', 'Pending', 'Cancelled', 'Completed'].freeze
  validates :status, inclusion: { in: BOOKING_STATUS }
  validates :status, :duration, :rate_per_hour, presence: true
  validates :rate_per_hour, numericality: { only_integer: true }
  validates :rate_per_hour, numericality: { greater_than_or_equal_to: 1 }
  validates :duration, numericality: { only_integer: true }
end
