class Symptom < ApplicationRecord
  has_many :issue_symptoms
  has_many :issues, through: :issue_symptoms
end
