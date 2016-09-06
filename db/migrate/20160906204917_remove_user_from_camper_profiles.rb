class RemoveUserFromCamperProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :camper_profiles, :user_id, :integer
  end
end
