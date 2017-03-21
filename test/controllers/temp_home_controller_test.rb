require 'test_helper'

class TempHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get stories_path
    assert_response :success
  end

end
