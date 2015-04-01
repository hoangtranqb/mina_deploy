class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :address, :latitude, :longitude, :city_id, :avatar_url, :radius, :distance

end
