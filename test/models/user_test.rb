require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:user)
    super
  end

  test "username" do
    @user.username = nil
    refute @user.save
    assert @user.errors.full_messages.include? "Username can't be blank"
  end

end
