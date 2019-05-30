class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :celebrity
  validates :user_id, :celebrity_id, presence: true
end
