class AddUserIdToMedications < ActiveRecord::Migration[5.0]
  def change
    add_column :medications, :user_id, :integer
  end
end
