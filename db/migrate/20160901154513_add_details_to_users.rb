class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
   add_column :users, :name, :string
   add_column :users, :role, :integer
   add_column :users, :fcc_username, :string
   add_column :users, :bio, :text
  end
end
