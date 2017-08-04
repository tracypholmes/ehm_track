class CreateSymptoms < ActiveRecord::Migration[5.1]
  def change
    create_table :symptoms do |t|
      t.integer :user_issue_id
      t.string :symptom_name

      t.timestamps
    end
  end
end
