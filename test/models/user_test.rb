require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:user)
    super
  end

  # test "username" do
  #   @user.username = nil
  #   refute @user.save
  #   assert @user.errors.full_messages.include? "Username can't be blank"
  # end
  should validate_presence_of(:username)
  should validate_presence_of(:email)

  should have_many(:posts)
  should have_many(:comments)
  should have_db_column(:posts_count)

  test "post count updates" do
    post = create(:post)
    post.user_id = @user.id
    assert @user.posts_count != 0
  end

  def test_generates_a_token
    

  end

end
