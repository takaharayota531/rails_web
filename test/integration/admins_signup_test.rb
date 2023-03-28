require "test_helper"
# adminのsign upをテストする
class AdminsSignupTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # adminのユーザー登録が失敗した時用のテスト　
  test "sign up with invalid information" do
    get new_admin_registration_path
    # このfileがrenderしているかのテスト
    assert_template 'admins/new'
    # adminに誤って登録されていないかのcheck
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: {
        email: "admin_invalid",
        password: "foo",
        password_confirmation: "bar"
      } }
    end
    assert_template 'admins/new'
    # error messageがちゃんと表示されているかのtest
    assert_select 'div#error_explanation'
    get root_path
    assert flash.empty?
  end

  # passwordが間違っているとき
  test "sign up with valid email/invalid password" do
    get new_admin_registration_path
    # このfileがrenderしているかのテスト
    assert_template 'admins/new'
    # adminに誤って登録されていないかのcheck
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: {
        email: "admin@example.com",
        password: "foo",
        password_confirmation: "bar"
      } }
    end
    assert_template 'admins/new'
    # error messageがちゃんと表示されているかのtest
    assert_select 'div#error_explanation'
    get root_path
    assert flash.empty?
  end

  # emailが間違っているとき
  test "sign up with invalid email/valid password" do
    get new_admin_registration_path
    # このfileがrenderしているかのテスト
    assert_template 'admins/new'
    # adminに誤って登録されていないかのcheck
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: {
        email: "invalid_email",
        password: "password",
        password_confirmation: "password"
      } }
    end
    assert_template 'admins/new'
    # error messageがちゃんと表示されているかのtest
    assert_select 'div#error_explanation'
    get root_path
    assert flash.empty?
  end

  # adminの登録に成功した時のtest

  test "sign up with valid information" do
    get new_admin_registration_path
    assert_difference 'Admin.count', 1 do
      post admins_path, params: { admin: {
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      } }
    end
    # assert admin_signed_in?
    assert_not flash.empty?
  end
end
