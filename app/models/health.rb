class Health < ApplicationRecord
  has_many :users, through: :user_health
  has_many :medications
  
end
