require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "associations" do
    it { should belong_to(:book) }
    it { should belong_to(:user) }
  end

  describe "factory" do
    it "is valid" do
      transaction = FactoryBot.build(:transaction)
      expect(transaction).to be_valid
    end
  end
end
