require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:orders) }
    # Add more association tests if needed
  end

  describe "custom methods" do
    it "checks if user is an admin" do
      admin_user = FactoryBot.build(:user, admin: true)
      regular_user = FactoryBot.build(:user)
      expect(admin_user.admin?).to be_truthy
      expect(regular_user.admin?).to be_falsy
    end

    # Add more custom method tests as needed
  end
end
