FactoryGirl.define do
  factory :post do
    title { Faker::HarryPotter.location }
    body { Faker::HarryPotter.quote }
    user
    summary { Faker::RickAndMorty.quote }
  end
end
