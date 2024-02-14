FactoryBot.define do
  factory :transaction do
    book
    user
    issue_date { Faker::Date.backward(days: 14) }
    return_date { Faker::Date.forward(days: 14) }
  end
end
