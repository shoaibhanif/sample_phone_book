require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "should get Register" do
  #   get users_Register_url
  #   assert_response :success
  # end
  test "should get new" do
    get signup_path
    assert_response :success
  end

end
