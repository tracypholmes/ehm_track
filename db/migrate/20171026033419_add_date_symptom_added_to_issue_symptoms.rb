class AddDateSymptomAddedToIssueSymptoms < ActiveRecord::Migration[5.0]
  def change
    add_column :issue_symptoms, :date_symptom_added, :date
  end
end
