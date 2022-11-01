class Car < ApplicationRecord
  belongs_to :user

  validates :model, presence: true
  validates :image, presence: true
end
