class Tag < ApplicationRecord
  has_many :celebrity_tags, dependent: :destroy
  has_many :celebrities, through: :celebrity_tags

  validates :name, presence: true, uniqueness: { insensitive: true }

  def self.list_names
    pluck(:name).map(&:capitalize).sort
  end
end
