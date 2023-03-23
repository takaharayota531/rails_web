require "test_helper"

class AdminTest < ActiveSupport::TestCase
  def setup
    @admin = Admin.new(email: "user@example.com",
                       password: "takahara", password_confirmation: "takahara")
    # @admin = Admin.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "email should be present" do
    @admin.email = "     "
    assert_not @admin.valid?
  end

  # passwordが8文字以上かのテスト
  test "password should be longer than 8" do
    @admin.password = @admin.password_confirmation = "suzukik"
    assert_not @admin.valid?
  end

  # 空白文字が8字の時弾くようにする
  test "password should be present (nonblank)" do
    @admin.password = @admin.password_confirmation = " " * 8
    assert_not @admin.valid?
  end
end
