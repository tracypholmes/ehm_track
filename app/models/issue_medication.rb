class IssueMedication < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :medication, optional: true
  
  
  def medications_attributes=(medication_attributes)
    medication_attributes.values.each do |medication_attribute|
      if medication_attributes[:medication_name].present?
        medication = Medication.find_or_create_by(medication_name: medication_attribute)
        self.medication = medication
      end
    end
  end
end
