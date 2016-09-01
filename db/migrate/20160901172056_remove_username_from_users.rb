class RemoveUsernameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :fcc_username
  end
end
