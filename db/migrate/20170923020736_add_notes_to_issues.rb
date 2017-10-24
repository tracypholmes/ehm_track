class AddNotesToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :notes, :text
  end
end
