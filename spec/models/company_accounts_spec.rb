require 'rails_helper'

RSpec.describe CompanyAccount, type: :model do
  context "associations" do
    it { should belong_to(:company) }
  end
end
