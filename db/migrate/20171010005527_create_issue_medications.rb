class CreateIssueMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_medications do |t|
      t.references :issue, foreign_key: true
      t.references :medication, foreign_key: true
      t.date :first_taken
      t.string :frequency
      t.integer :dosage

      t.timestamps
    end
  end
end
