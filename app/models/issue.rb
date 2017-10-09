class Issue < ApplicationRecord
  belongs_to :user

  has_many :issue_medications
  has_many :medications, through: :issue_medications
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms
  accepts_nested_attributes_for :issue_medications
  
  validates :issue_name, presence: true
  validates :date_started, presence: true
end
