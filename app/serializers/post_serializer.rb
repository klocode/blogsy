class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user
end
