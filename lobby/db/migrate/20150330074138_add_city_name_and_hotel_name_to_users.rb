class AddCityNameAndHotelNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city_name, :string
    add_column :users, :hotel_name, :string
  end
end
