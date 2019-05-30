class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings, dependent: :destroy
  has_many :celebrities, through: :bookings
  has_many :wishlists, dependent: :destroy
  has_many :celebrities, through: :whishlists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, :last_name, :date_of_birth, presence: true
end
