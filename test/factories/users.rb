FactoryGirl.define do
  factory :user do
    username { Faker::HarryPotter.character }
    email { Faker::Internet.free_email }
    bio { Faker::Superhero.power }
  end
end
