class CreateSymptoms < ActiveRecord::Migration[5.0]
  def change
    create_table :symptoms do |t|
      t.string :symptom_name

      t.timestamps
    end
  end
end
