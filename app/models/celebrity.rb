class Celebrity < ApplicationRecord
  has_many :bookings
  has_many :celebrity_tags
  has_many :tags, through: :celebrity_tags

  validates :first_name, :last_name, presence: true
  validates :last_name, uniqueness: { scope: :first_name }
  validates :photo, :description, :rate_per_hour, :date_of_birth, :gender, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def location
    "#{city}, #{country}"
  end

  private

  def will_save_change_to_location?
    will_save_change_to_city? || will_save_change_to_country?
  end
end
