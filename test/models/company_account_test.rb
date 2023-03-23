require "test_helper"

class CompanyAccountTest < ActiveSupport::TestCase
  def setup
    @company_account = CompanyAccount.new(
      company_id: 1, name: "user",
      email: "user@example.com",
      password: "foobar", password_confirmation: "foobar"
    )
  end

  test "should be valid" do
    assert @company_account.valid?
  end

  test "email should be present" do
    @company_account.email = "     "
    assert_not @company_account.valid?
  end
end
