require 'api_constraints'

Rails.application.routes.draw do
  apipie
  
  namespace :api, defaults: { format: :json }, path: '/'  do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :hotels, only: [:show, :index]
      resources :cities
      resources :users
    end
  end
end
