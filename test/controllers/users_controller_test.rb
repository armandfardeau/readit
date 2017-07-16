require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "show user" do
    get user_path(users(:glenn))
    assert_response :success
    assert response.body.include?(users(:glenn).name)
  end
  test "show submitted" do
    get user_path(users(:glenn))
    assert_select 'div.stories_submitted div.story', count: 2
  end

end
