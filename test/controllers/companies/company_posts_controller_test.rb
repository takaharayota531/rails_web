require "test_helper"

class Companies::CompanyPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get companies_company_posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get companies_company_posts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get companies_company_posts_destroy_url
    assert_response :success
  end

  test "should get index" do
    get companies_company_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get companies_company_posts_show_url
    assert_response :success
  end
end
