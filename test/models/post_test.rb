require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = build(:post)
    super
  end
  should belong_to(:user)
  should have_many(:comments)

  should validate_presence_of(:title)
  should validate_presence_of(:body)

  should have_db_column(:comments_count)

  test "user_id" do
    @post.user_id = nil
    refute @post.save
    assert @post.errors.full_messages.include? "User must exist"
  end

  test "comments count updates" do
    comment = build(:comment)
    user = create(:user)
    comment.user_id = user
    comment.post_id = @post
    comment.save
    assert @post.comments_count != 0
  end

end
