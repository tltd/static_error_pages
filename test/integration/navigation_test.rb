require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test "render the 404 error page" do
    get "/static_error_pages/404"
    assert_response :success
    assert_template '404'
  end

  test "render the 422 error page" do
    get "/static_error_pages/422"
    assert_response :success
    assert_template '422'
  end

  test "render the 500 error page" do
    get "/static_error_pages/500"
    assert_response :success
    assert_template '500'
  end

  test "ignore unsupported errors" do
    get "/static_error_pages/unknown"
    assert_response :not_found
  end

  test "ignore unsupported paths" do
    get "/logs/unknown"
    assert_response :not_found
  end
end
