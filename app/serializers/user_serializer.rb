class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :posts_count
end
