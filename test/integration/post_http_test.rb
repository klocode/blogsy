require 'test_helper'

class PostHttpTest < ActionDispatch::IntegrationTest
  test 'posts#index' do
    get "/posts"
    assert response.ok?
    json = JSON.parse(response.body)
    assert json.first["username"]
  end

  test 'users#index' do
    get '/users'
    assert response.ok?
    json = JSON.parse(response.body)
    assert json.first["username"]
    assert json.first["posts_count"]
    refute json.first["email"]
  end

  test 'posts#show' do
    post = Post.last
    get "/posts/:#{post.id}"
    assert response.ok?
    json = JSON.parse(response.body)
    assert json ["username"]
  end

  test 'comments#index' do
    post_ids = Post.pluck(:id)
    user_ids = User.pluck(:id)
    10.times do
      Comment.create!(
      body: Faker::HarryPotter.quote,
      user_id: user_ids.sample,
      post_id: post_ids.sample
      )
    end
    get "/posts/#{comment.post_id}/comments"
    assert response.ok?
    json = JSON.parse(response.body)
    assert_equal comment.post.comments.size, json.length # counts cache column
    assert json.detect{|com| com["body"] == comment.body}
  end

end
