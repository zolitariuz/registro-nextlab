class RegisteredUsers < ActiveRecord::Migration
  def change
  	create_table :registered_users do |t|
  	  t.string "name", :null => false
  	  t.string "email", :null => false

  	  t.timestamps
  	end
  end
end
