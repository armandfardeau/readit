require 'test_helper'

class TempHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get temp_home_redirect_url
    assert_response :success
  end

end
