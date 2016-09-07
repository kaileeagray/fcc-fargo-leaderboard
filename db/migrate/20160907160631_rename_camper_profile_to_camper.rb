class RenameCamperProfileToCamper < ActiveRecord::Migration[5.0]
  def change
    rename_table :camper_profiles, :campers
  end
end
