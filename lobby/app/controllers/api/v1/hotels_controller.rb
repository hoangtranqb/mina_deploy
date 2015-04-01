require 'will_paginate/array'

class Api::V1::HotelsController < ApplicationController
  include ActionController::MimeResponds
  before_action :authenticate, :current_user
  respond_to :json


  resource_description do
    api_version "1"
  end

  api!
  def show  
    # @hotel =
  end

  api!
  def index
    #detect city of user
    # user_city = self.detect_address_of_user
    
    #list hotel
    @hotels = Hotel.all
    render json: @hotels

    p @current_user
    #list hotel near user
    # @list_hotel_near_user = []
    # latitude = params[:latitude].to_f
    # longitude = params[:longitude].to_f
    # user_radius = params[:radius].to_f


    # @hotels.each do |hotel|
    #   hotel.find_near_user_by_lat_long(latitude,longitude)
    #   if hotel.distance <= user_radius
    #     @list_hotel_near_user << hotel        
    #   end
    # end 
    # # sort by distance
    # @list_hotel_near_user.sort_by! { |hotel| hotel.distance }

    # # render json with paginate
    # @list = @list_hotel_near_user.paginate(:page => params[:page],:per_page => params[:perpage])
    # render json: @list, meta: @list_hotel_near_user.count , meta_key: "count"
  end
  
  api!
  api :GET, "/users", "Show list hotels"
  error :code => 401, :desc => "Unauthorized"
  error :code => 404, :desc => "Not Found", :meta => {:anything => "you can think of"}
  description "method description"
  formats ['json']
  # def detect_address_of_user
  #   latitude = params[:latitude]
  #   longitude = params[:longitude]
  #   result = Geocoder.search("43.0199463,-76.1641095")
  #   user_address = result[0].city
  #  end
end
