FactoryGirl.define do
  factory :comment do
    body { Faker::Music.instrument }
    user
    post
  end
end
