class AddDistanceToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :distance, :float
  end
end
