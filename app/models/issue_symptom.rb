class IssueSymptom < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :symptom, optional: true
end
