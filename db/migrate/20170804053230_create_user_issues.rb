class CreateUserIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :user_issues do |t|
      t.integer :user_id
      t.integer :issue_id
      t.integer :symptom_id
      t.text :notes

      t.timestamps
    end
  end
end
