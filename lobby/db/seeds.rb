# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Hotel.create!(name:  Faker::Name.name,
#                latitude: Faker::Address.latitude.to_f,
#                longitude: Faker::Address.longitude.to_f,
#                address: Faker::Address.city,
#                image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROslrYvLsfoM9Xlqted5OZQOlD6JwA7oNhhn2I4_axDWF3P_0bjw',
#                city_id: 1)
City.create!(
          name: Faker::Address.city,
          image_url: 'http://startupphenomenon.com/2013/wp-content/uploads/2013/09/city_by_the_bay_1232.jpg'
     )

20.times do |n|
  Hotel.create!(name:  Faker::Name.name,
               latitude: 40.6788753,
               longitude: -73.9390402,
               address: Faker::Address.city,
               image_url: 'http://r-ec.bstatic.com/images/hotel/840x460/245/2450624.jpg',
               city_id: 1,
               radius: 0.25,
               avatar_url: 'http://www.hotel-pictures.net/wp-content/uploads/2015/01/Private-pool_hotel_viceroy_bali-440x294.jpg?e52be1'
          )
end