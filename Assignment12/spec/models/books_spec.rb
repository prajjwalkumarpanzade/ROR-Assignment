require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:genre) }
  end

  describe "associations" do
    it { should have_many(:transactions) }
  end

  describe "factory" do
    it "is valid" do
      book = FactoryBot.build(:book)
      expect(book).to be_valid
    end
  end
end
