class RenameHealthsToIssues < ActiveRecord::Migration[5.1]
  def change
    rename_table :healths, :issues
  end
end

