class CreateFccProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :fcc_profiles do |t|
      t.string :username
      t.integer :points
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
