class UserSerializer < ActiveModel::Serializer
  has_many :reports
  
  attributes :id, :username, :firstname, :lastname, :email, :password_digest
end
