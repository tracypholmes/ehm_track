class CreateIssueMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_medications do |t|
      t.integer :issue_id
      t.integer :medication_id
      t.integer :dosage
      t.string :frequency
      t.date :date_started

      t.timestamps
    end
  end
end
