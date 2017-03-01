class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :upvotes
  belongs_to :user
end
