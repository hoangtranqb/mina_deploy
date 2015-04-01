class RemoveCityIdAndHotelIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :hotel_id, :integer
    remove_column :users, :city_id, :integer
  end
end
