class Issue < ApplicationRecord
  has_many :users, through: :user_issue
  has_many :medications
  
end
