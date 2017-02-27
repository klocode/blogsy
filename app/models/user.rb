class User < ApplicationRecord

  has_many :posts
  has_many :comments

  validates :username, :email, presence: true

end
