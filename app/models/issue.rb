class Issue < ApplicationRecord
  # has_many :users, through: :user_issue
  belongs_to :user
  has_many :medications
  
  validates :issue_name, presence: true
  validates :date_started, presence: true
end
