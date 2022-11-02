class Car < ApplicationRecord
  belongs_to :user

  validates :model, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  has_many :reservations
end
