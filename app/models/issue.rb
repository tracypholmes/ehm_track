class Issue < ApplicationRecord
  belongs_to :user
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms
  has_many :issue_medications
  has_many :medications, through: :issue_medications
  accepts_nested_attributes_for :issue_medications
  accepts_nested_attributes_for :medications

  validates :issue_name, presence: true
  validates :date_started, presence: true

  def symptoms_attributes=(symptom_attributes)
    symptom_attributes.values.each do |symptom_attribute|
      if symptom_attribute[:symptom_name].present? 
        symptom = Symptom.find_or_create_by(symptom_attribute)
        self.symptoms << symptom
      end
    end
  end
  
end
