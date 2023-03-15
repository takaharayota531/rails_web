require "test_helper"

class Main::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_pages_home_url
    assert_response :success
  end

  test "should get index" do
    get main_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get main_pages_show_url
    assert_response :success
  end
end
