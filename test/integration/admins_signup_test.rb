require "test_helper"

class AdminsSignupTest < ActionDispatch::IntegrationTest
  # adminのユーザー登録が失敗した時用のテスト　
  test "invalid signup information" do
    get new_admin_registration_path
    # このfileがrenderしているかのテスト
    assert_template 'admins/new'
    # adminに誤って登録されていないかのcheck
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: {
        email: "admin@invalid",
        password: "foo",
        password_confirmation: "bar"
      } }
    end
    assert_template 'admins/new'
    # error messageがちゃんと表示されているかのtest
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
    assert_select 'div.alert-danger'
  end

  # adminの登録に成功した時のtest
  # TODO 高原がちゃんとpathとテスト実装しておく
  test "valid signup information" do
    get new_admin_registration_path
    assert_difference 'Admin.count', 1 do
      post admins_path, params: { admin: {
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      } }
    end

    assert_not flash.empty?
  end
end
