class ChangeColumnName < ActiveRecord::Migration
  def change
  	  	 rename_table :user_comments ,:comments 
  end
end
