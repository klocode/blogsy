class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :upvotes, :user
end
