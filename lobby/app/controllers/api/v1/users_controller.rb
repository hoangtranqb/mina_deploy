class Api::V1::UsersController < ApplicationController
  include ActionController::MimeResponds

  respond_to :json

  def index
    access_token = params[:access_token]
    @graph = Koala::Facebook::API.new(access_token)

    #get profile
    profile = @graph.get_object("me")
    #get image
    image_url = @graph.get_picture("me",type: :large)

    #get friends list
    friends = @graph.get_connections("me", "friends")
    number_friends = 0
    mutual_friends = ""
    friends.each do |friend|
      if User.find_by_uid(friend['id'])
        number_friends += 1
        mutual_friends << User.find_by_uid(friend['id']).id.to_s + ","
      end    
    end

    #get age
    age = Time.now.utc.to_date.year - Date.strptime(profile['birthday'],"%m/%d/%Y").year
    #get interests
    interests = @graph.get_connections("me", "interests","fields"=>"name, category, picture" )
   
    user = User.find_by_uid(profile['id'])
    if user.present?
      render json: user
    else  
      new_user = User.new(:email => profile['email'],
                          :name => profile['name'], 
                          :uid => profile['id'], 
                          :gender => profile['gender'],
                          :image_url => image_url,
                          :first_name => profile['first_name'],
                          :last_name => profile['last_name'],
                          :number_of_friends => number_friends,
                          :mutual_friends => mutual_friends,
                          :age => age,
                          :address => profile['location']['name'])
      interests.each do |interest|
        new_user.interest_pages << InterestPage.create!( :name => interest['name'], 
                                                :category => interest['category'],
                                                :image_url => interest['picture']['data']['url'])
      end
      new_user.images <<  Image.create!(:image_url => image_url) 
      new_user.save
      render json: new_user
    end  
  end

  def show  
    user = User.find(params[:id])
    render json: user
  end
end
