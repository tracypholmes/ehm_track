class Medication < ApplicationRecord
  has_many :issue_medications
  has_many :issues, through: :issue_medications
end
