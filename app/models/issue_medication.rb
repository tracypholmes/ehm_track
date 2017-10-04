class IssueMedication < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :medication, optional: true
  accepts_nested_attributes_for :medication
end
