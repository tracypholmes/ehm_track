class IssueMedication < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :medication, optional: true
end
