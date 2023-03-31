require "test_helper"

class CompanyAccountTest < ActiveSupport::TestCase
  def setup
    @company = Company.new(
      name: "user",
      email: "email@example.com",
      phone_number: "0809875",
      recruiter_name: "recruiter"
    )
    @company_account = CompanyAccount.new(
      company: @company, name: "user",
      email: "user@example.com",
      password: "foobar_test", password_confirmation: "foobar_test",
      is_notification_enabled: true
    )
  end

  test "should be valid" do
    assert @company_account.valid?
  end

  test "company should be valid" do
    assert @company.valid?
  end
  test "email should be present" do
    @company_account.email = "     "
    assert_not @company_account.valid?
  end
end
