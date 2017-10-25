class Issue < ApplicationRecord
  belongs_to :user
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms

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
