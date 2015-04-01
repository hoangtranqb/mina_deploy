class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  include ActionController::HttpAuthentication::Token::ControllerMethods
  
  private

  def authenticate
    unless User.exists?(auth_token: params[:auth_token])
      authenticate_or_request_with_http_token do |token, options|
        @user = User.where(auth_token: token).first
      end
    end
  end

  def current_user
    @current_user = User.find_by(auth_token: params[:auth_token])
  end
end
