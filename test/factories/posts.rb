FactoryGirl.define do
  factory :post do
    title { Faker::HarryPotter.location }
    body { Faker::HarryPotter.quote }
    user
    summary { Faker::Pokemon.name }
  end
end
