class Hotel < ActiveRecord::Base
  attr_accessor :distance
  validates :name, :image_url, :address, :latitude, :longitude, :city_id, presence: true 

  belongs_to :city

  def find_near_user_by_lat_long(ulat,ulong)
    self.distance = Geocoder::Calculations.distance_between([self.latitude,self.longitude], [ulat.to_f,ulong.to_f])
  end
end
