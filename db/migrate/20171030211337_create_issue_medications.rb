class CreateIssueMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :issue_medications do |t|
      t.integer :issue_id
      t.integer :medication_id
      t.date :date_med_started

      t.timestamps
    end
  end
end
