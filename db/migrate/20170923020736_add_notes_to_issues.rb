class AddNotesToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :notes, :text
  end
end
