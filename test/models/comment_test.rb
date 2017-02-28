require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = build(:comment)
  end

  should belong_to(:user)
  should belong_to(:post)

  should validate_presence_of(:body)

  # not sure if this test is redundant because of the 'should' line above

  test "body" do
    @comment.body = nil
    refute @comment.save
    assert @comment.errors.full_messages.include? "Body can't be blank"
  end

  test "user_id" do
    @comment.user_id = nil
    refute @comment.save
    assert @comment.errors.full_messages.include? "User must exist"
  end

  test "post_id" do
    @comment.post_id = nil
    refute @comment.save
    assert @comment.errors.full_messages.include? "Post must exist"
  end

end
