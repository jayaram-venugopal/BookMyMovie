FactoryBot.define do
  factory :user do
    email     { Faker::Internet.safe_email }
    name      { Faker::Name.first_name }
    gender    { Faker::Gender.binary_type.downcase }
    password  { "Test123" }
  end
end
