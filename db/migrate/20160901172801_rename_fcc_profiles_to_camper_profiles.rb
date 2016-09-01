class RenameFccProfilesToCamperProfiles < ActiveRecord::Migration[5.0]
  def change
    rename_table :fcc_profiles, :camper_profiles
  end
end
