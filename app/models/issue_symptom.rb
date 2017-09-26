class IssueSymptom < ApplicationRecord
  belongs_to :issue
  belongs_to :symptom
  
  validates :issue_id, presence: true
  validates :symptom_id, presence: true
  validates :symptom_id, uniqueness: { scope: :issue_id }
end
