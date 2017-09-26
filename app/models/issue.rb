class Issue < ApplicationRecord
  belongs_to :user
  has_many :medications
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms
  
  validates :issue_name, presence: true
  validates :date_started, presence: true
end
