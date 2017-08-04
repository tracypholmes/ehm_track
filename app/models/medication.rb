class Medication < ApplicationRecord
  has_many :issue, through: :issue_medications
  has_many :users, through: :issue
  belongs_to :issue
end
