class User < ApplicationRecord
  has_many :user_health  
  has_many :health, through: :user_health  
  has_many :medications, through: :health  
  has_secure_password
  
  validates :name, :username, :email, presence: true, uniqueness: true 
  validates :password, presence: true, length: { in: 8..15 }
  # validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
