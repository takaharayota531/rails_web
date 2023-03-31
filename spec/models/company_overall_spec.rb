require 'rails_helper'

RSpec.describe CompanyOverall, type: :model do
  context "associations" do
    it { should belong_to(:internship) }
  end
end
