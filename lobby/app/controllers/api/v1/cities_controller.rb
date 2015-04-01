class Api::V1::CitiesController < ApplicationController
  include ActionController::MimeResponds

  respond_to :json

  def show
    @city = City.find(params[:id])
    render json: @city 
  end
end
