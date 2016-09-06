class CreateFccProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :fcc_profiles do |t|
      t.string :username
      t.integer :points
      t.belongs_to :user, index: true, unique: true, foreign_key: true
      t.timestamps null: false
    end

  end
end
