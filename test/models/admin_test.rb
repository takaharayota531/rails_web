require "test_helper"

class AdminTest < ActiveSupport::TestCase
  def setup
    @admin = Admin.new(email: "user@example.com",
                       password: "foobar", password_confirmation: "foobar")
    # @admin = Admin.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "email should be present" do
    @admin.email = "     "
    assert_not @admin.valid?
  end
end
