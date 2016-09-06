class AddUserRefToCamperProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :camper_profiles, :user, foreign_key: true
  end
end