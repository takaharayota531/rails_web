require "test_helper"

class Company::CompanyPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get company_company_posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get company_company_posts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get company_company_posts_destroy_url
    assert_response :success
  end

  test "should get index" do
    get company_company_posts_index_url
    assert_response :success
  end
end
