class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :uid
      t.string :email
      t.integer :age
      t.string :image_url
      t.integer :hotel_id
      t.integer :city_id
      t.string :bio
      t.float :latiude
      t.float :longitude
      t.string :bio
      t.string :gender
      t.string :auth_token
      
      t.timestamps
    end
  end
end
