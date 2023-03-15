require "test_helper"

class Main::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_homes_index_url
    assert_response :success
  end

  test "should get new" do
    get main_homes_new_url
    assert_response :success
  end
end
