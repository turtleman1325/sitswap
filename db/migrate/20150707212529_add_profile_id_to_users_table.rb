class AddProfileIdToUsersTable < ActiveRecord::Migration
  def change
    add_reference :users, :profiles, index:true
  end
end
