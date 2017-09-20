class AddUserIdToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :user_id, :integer
  end
end
