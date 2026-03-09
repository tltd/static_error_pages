require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test "render the error page" do
    get "/static_error_pages/404"
    assert_response :success
    assert_template '404'
  end

  test "ignore unsupported pages" do
    get "/static_error_pages/unknown"
    assert_response :success
    assert_template '404'
  end
end
