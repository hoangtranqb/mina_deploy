class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :image_url
      t.float :latitude
      t.float :longitude
      t.float :radius
      t.integer :city_id
      t.string :avatar_url

      t.timestamps
    end
  end
end
