class AddToCreateUsers < ActiveRecord::Migration
  def change
    drop_table :create_users 
  end
end
