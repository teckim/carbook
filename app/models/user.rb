class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password,
            confirmation: true,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
  validates :password_confirmation, presence: true

  has_many :cars
end
