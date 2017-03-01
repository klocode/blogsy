require 'test_helper'

class UserHttpTest < ActionDispatch::IntegrationTest
  test "it should create a user" do
    hash = {
      username: "Test User",
      email: "testing@email.net"
    }
    post "/users",
      params: hash
    assert response.ok?
    json = JSON.parse(response.body)
    assert_equal hash[:username], json["username"]
  end

end
