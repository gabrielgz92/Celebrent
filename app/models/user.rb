class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :celebrities, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :date_of_birth, presence: true
end
