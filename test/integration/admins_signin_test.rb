require "test_helper"

# adminのログインをテストする
class AdminsSigninTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    @admin = admins(:one)
  end

  # email,passwordどちらも誤っているとき
  test "sign in with invalid information" do
    get new_admin_session_path
    assert_response :success
    assert_template 'admin_sessions/new'
    # 不適切なemail,passwordを割り当てたとき
    post admin_session_path, params: { admin: { email: "", password: "" } }
    assert_template 'admin_sessions/new'
    # errorメッセージがちゃんと表示されるか
    assert_not flash.empty?
    # いったんいらない
    # get edit_admin_registration_path
    # assert flash.empty?
  end

  # passwordが間違っているとき
  test "login with valid email/invalid password" do
    get new_admin_session_path
    assert_template 'admin_sessions/new'
    post admin_session_path, params: { admin: { email: @admin.email,
                                                password: "invalid" } }
    assert_response :unprocessable_entity
    assert_template 'admin_sessions/new'
    assert_not flash.empty?
    # get root_path
    # assert flash.empty?
  end

  # emailが間違っているとき
  test "login with invalid email/valid password" do
    get new_admin_session_path
    assert_template 'admin_sessions/new'
    post admin_session_path, params: { admin: { email: "invalid@example.com",
                                                password: @admin.password } }
    assert_response :unprocessable_entity
    assert_template 'admin_sessions/new'
    assert_not flash.empty?
  end

  # 適切な情報を入れたとき
  test "login with valid information" do
    post admin_session_path, params: { admin: { email: @admin.email,
                                                password: 'password' } }
    assert_not flash.empty?
    # assert is_admin_logged_in?
    # assert_redirected_to @admin
    # follow_redirect!
  end

  # ログインした後のredirectが適切か調べる
  test "should post create" do
    post admin_session_path, params: {
      admin: {
        email: @admin.email,
        password: 'password'
      }
    }
    assert_redirected_to root_path
  end

  # logout処理のテスト
  test "should delete destroy" do
    sign_in @admin
    delete destroy_admin_session_path
    assert_redirected_to root_path
  end
end
