class AddNumberOfFriendToUsers < ActiveRecord::Migration
  def change
    add_column :users, :number_of_friends, :integer
  end
end
