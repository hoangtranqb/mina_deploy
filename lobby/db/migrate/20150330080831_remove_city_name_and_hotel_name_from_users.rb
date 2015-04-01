class RemoveCityNameAndHotelNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :hotel_name, :string
    remove_column :users, :city_name, :string
  end
end
