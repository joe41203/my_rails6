FactoryBot.define do
  factory :user do
    name { Faker::FunnyName.name }
    email { Faker::Internet.free_email }
  end
end
