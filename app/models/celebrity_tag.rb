class CelebrityTag < ApplicationRecord
  belongs_to :celebrity
  belongs_to :tag

  validates :tag, uniqueness: {
                                scope: :celebrity,
                                message: 'has already been added'
                              }
end
