class AddColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
  end

  def down
    drop_column :users, :password, :string
  end

end
