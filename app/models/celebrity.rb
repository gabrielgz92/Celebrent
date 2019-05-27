class Celebrity < ApplicationRecord
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates :photo, :description, :rate_per_hour, :date_of_birth, :gender, presence: true
end
