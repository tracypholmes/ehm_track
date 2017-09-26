class Medication < ApplicationRecord
  has_many :issues, through: :issue_medications
  has_many :users, through: :issues
  belongs_to :issue
end
