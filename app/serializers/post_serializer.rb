class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :username, :upvotes
  # belongs_to :user

  def username
    object.user.username
  end
end
