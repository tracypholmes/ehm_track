class User < ApplicationRecord
  validates :name, :username, presence: true, uniqueness: true 
  validates :password, presence: true, length: { in: 8..15 }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
