class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :issue_name
      t.date :date_started

      t.timestamps
    end
  end
end
