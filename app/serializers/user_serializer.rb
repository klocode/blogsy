class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :posts_count
end
