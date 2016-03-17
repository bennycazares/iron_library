class CreateCreateUsers < ActiveRecord::Migration
  def change
    create_table :create_users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.timestamps null: false
    end
  end
end
