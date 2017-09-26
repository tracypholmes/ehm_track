class CreateIssueSymptoms < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_symptoms do |t|
      t.integer :issue_id
      t.integer :symptom_id

      t.timestamps
    end
  end
end
