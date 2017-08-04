class IssueMedication < ApplicationRecord
  belongs_to :medication
  belongs_to :issue
end
