class User < ApplicationRecord
  has_many :user_issue  
  has_many :issue, through: :user_issue  
  has_many :medications, through: :issue  
  has_secure_password
  
  validates :name, :username, :email, presence: true, uniqueness: true 
  validates :password, presence: true, length: { in: 8..15 }
end
