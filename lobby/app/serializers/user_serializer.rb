class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid, :gender,:address , :age, :first_name, :last_name, :auth_token, :email, :number_of_friends, :mutual_friends, :interest_pages, :images

  has_many :interest_pages
  has_many :images
end
