class Celebrity < ApplicationRecord
  has_many :bookings
  validates :first_name, :last_name, presence: true
  validates :last_name, uniqueness: { scope: :first_name }
  validates :photo, :description, :rate_per_hour, :date_of_birth, :gender, presence: true
end
