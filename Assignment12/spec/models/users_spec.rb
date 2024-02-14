require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:phone_no) }
    it { should validate_uniqueness_of(:phone_no) }
    it { should allow_value('1234567890').for(:phone_no) }
  end

  describe "callbacks" do
    it "should normalize role before validation" do
      user = FactoryBot.build(:user, role: "teacher")
      user.valid?
      expect(user.role).to eq("teacher")
    end

    it "should output a welcome message after saving" do
      user = FactoryBot.build(:user)
      expect { user.save }.to output(/Welcome .+ to the Library Management System\n/).to_stdout
    end
  end

  describe "associations" do
    it { should have_many(:transactions) }
  end
end
