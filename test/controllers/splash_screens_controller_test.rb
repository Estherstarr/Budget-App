require "test_helper"

class SplashScreensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get splash_screens_index_url
    assert_response :success
  end
end
