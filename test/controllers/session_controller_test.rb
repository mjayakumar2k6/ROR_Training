require "test_helper"

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get session_signin_url
    assert_response :success
  end

  test "should get signup" do
    get session_signup_url
    assert_response :success
  end

  test "should get signout" do
    get session_signout_url
    assert_response :success
  end
end
