class Issue < ApplicationRecord
  belongs_to :user
  has_many :issue_symptoms
  has_many :symptoms, through: :issue_symptoms
  has_many :issue_medications
  has_many :medications, through: :issue_medications
  accepts_nested_attributes_for :issue_medications
  accepts_nested_attributes_for :medications

  validates_presence_of :issue_name, :date_started
  validate :no_future_date_started, on: :create

  def symptoms_attributes=(symptom_attributes)
    symptom_attributes.values.each do |symptom_attribute|
      if symptom_attribute[:symptom_name].present? 
        symptom = Symptom.find_or_create_by(symptom_attribute)
        self.symptoms << symptom
      end
    end
  end
  
  def no_future_date_started
    errors.add(:date_started, "cannot be a future date") if date_started.present? && date_started > Date.today
  end
end
