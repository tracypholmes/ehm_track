class IssueSymptom < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :symptom, optional: true
  
  # validates :issue_id, presence: true
  # validates :symptom_id, presence: true
  # validates :symptom_id, uniqueness: { scope: :issue_id }
end
