require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = create(:user)
    @post = create(:post)
    @post.user_id = @user.id
  end

  test "should get index" do
    get '/posts'
    assert_response :success
    json = JSON.parse(response.body)
    assert_equal hash[:title], json["title"]
  end

end
