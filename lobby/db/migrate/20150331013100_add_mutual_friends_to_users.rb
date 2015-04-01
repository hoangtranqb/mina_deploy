class AddMutualFriendsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mutual_friends, :string
  end
end
