require 'rails_helper'

RSpec.describe JewelleryItem, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      jewellery_item = FactoryBot.build(:jewellery_item)
      expect(jewellery_item).to be_valid
    end

    it "is not valid without a name" do
      jewellery_item = FactoryBot.build(:jewellery_item, name: nil)
      expect(jewellery_item).not_to be_valid
    end

    it "is not valid without a price" do
      jewellery_item = FactoryBot.build(:jewellery_item, price: nil)
      expect(jewellery_item).not_to be_valid
    end

    it "is not valid with a non-numeric price" do
      jewellery_item = FactoryBot.build(:jewellery_item, price: "abc")
      expect(jewellery_item).not_to be_valid
    end
  end

  describe "associations" do
    it { should belong_to(:user) }
  end

  describe "custom methods" do
    it "formats price with currency symbol" do
      jewellery_item = FactoryBot.build(:jewellery_item, price: 100)
      expect(jewellery_item.formatted_price).to eq("$100.00")
    end
  end
end
