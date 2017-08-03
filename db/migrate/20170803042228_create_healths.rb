class CreateHealths < ActiveRecord::Migration[5.1]
  def change
    create_table :healths do |t|
      t.string :issue_name
      t.date :date_started

      t.timestamps
    end
  end
end
