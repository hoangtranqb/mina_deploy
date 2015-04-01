class AddLatitudeAndRemoveLatiudeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :latiude, :float
    add_column :users, :latitude, :float
  end
end
