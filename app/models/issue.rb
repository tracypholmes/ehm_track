class Issue < ApplicationRecord
  belongs_to :user

  has_many :issue_medications
  has_many :medications, through: :issue_medications
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms
  accepts_nested_attributes_for :medications
  
  validates :issue_name, presence: true
  validates :date_started, presence: true
  
  def medications_attributes=(medication_attributes)
    medication_attributes.values.each do |medication_attribute|
      # binding.pry
      medication = Medication.find_or_create_by(medication_name: medication_attribute["medication_name"])
      self.medications << medication
    end
  end
end
