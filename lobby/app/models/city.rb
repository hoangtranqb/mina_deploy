class City < ActiveRecord::Base
  validates :name, :image_url, presence: true 

  has_many :hotels
end
