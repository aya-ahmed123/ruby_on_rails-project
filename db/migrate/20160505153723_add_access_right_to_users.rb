class AddAccessRightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :access_right, :string
  end
end
