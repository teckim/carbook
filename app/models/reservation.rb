class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :date, presence: true, length: { in: 0..20 }
  validates :city, presence: true, length: { in: 0..50 }
end
