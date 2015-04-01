FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    gender "male"
    age 18
    latitude 40.6788753
    longitude -73.9390402
  end

end
