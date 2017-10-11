class Medication < ApplicationRecord
  has_many :issue_medications
  has_many :issues, through: :issue_medications
  
  # added by Luke
  accepts_nested_attributes_for :issue_medications
  
  def issue_medications_attributes=(issue_medications_attributes)
  # binding.pry 
  end

end
