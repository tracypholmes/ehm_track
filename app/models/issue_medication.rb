class IssueMedication < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :medication, optional: true
  
  
  def medications_attributes=(medication_attributes)
    # medication_attributes.values.each do |medication_attribute|
      if medication_attributes[:medication_name].present?
        medication = Medication.create(medication_attributes)
        self.medication = medication
      end
    # end
  end
end
