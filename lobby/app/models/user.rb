class User < ActiveRecord::Base
  attr_accessor :city_name, :hotel_name
  before_create :generate_auth_token

  has_many :interest_pages
  has_many :images
  
  private

  def generate_auth_token
    begin
      self.auth_token = SecureRandom.hex
    end while self.class.exists?(auth_token: auth_token)
  end
end
