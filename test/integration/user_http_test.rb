require 'test_helper'

class UserHttpTest < ActionDispatch::IntegrationTest
  test 'users#create' do
    hash = {
      username: "Test User",
      email: "testing@email.net",
      bio: "My funky bio"
    }
    post "/users",
      params: hash
    assert response.ok?
    json = JSON.parse(response.body)
    assert_equal hash[:username], json["username"]
    assert_equal "Test User", json["username"]
    refute json["password"]
    refute json["password_digest"]
    assert json["auth_token"]
  end

end
