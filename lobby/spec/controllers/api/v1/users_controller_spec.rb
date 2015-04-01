require 'spec_helper'

describe Api::V1::UsersController do
  before(:each) { request.headers['Accept'] = "application/lobby.v1" }

  describe "GET #show" do
    before(:each) do
      @user = FactoryGirl.create :user
      get :show, id: @user.id, format: :json
    end

    it "returns the information about user on a hash" do
      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response[:user][:email]).to eql @user.email
    end

    it { should respond_with 200 }
  end

  describe "GET #index" do
    # before do
    #   10.times { |n| FactoryGirl.create(:user, latitude: 50.6788753 + n, longitude: -73.9390402 + n) }
    #   @user = FactoryGirl.create(:user, latitude: 40.6788753, longitude: -73.9390402)
    # end

    # context "request all users" do
    #   before(:each) do
    #     get :index, format: :json
    #   end

    #   it "returns the list of users on a hash" do
    #     users_response = JSON.parse(response.body, symbolize_names: true)
    #     users_response[:users].each do |user_response|
    #       expect(user_response[:email]).to be_present
    #     end
    #   end

    #   it { should respond_with 200 }  
    # end

    # context "request list users with params" do
    #   before(:each) do
    #     get :index, { latitude: 40.6788753, longitude: -73.9390402, radius: 2 }, format: :json
    #   end

    #   it "returns the list of users on a hash" do
    #     users_response = JSON.parse(response.body, symbolize_names: true)
    #     expect(users_response[:users]).to eql @user
    #     # users_response[:users].each do |user_response|
    #     #   puts user_response[:email]
    #     #   expect(user_response).to match_array @user
    #     # end
    #   end

    #   it { should respond_with 200 }  
    # end
  end

end
