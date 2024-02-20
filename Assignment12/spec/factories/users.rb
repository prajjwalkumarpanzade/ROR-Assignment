FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    address { Faker::Address.full_address }
    phone_no { Faker::PhoneNumber.phone_number }
    role { 'user' }
  end
end
