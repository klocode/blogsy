FactoryGirl.define do
  factory :comment do
    body { Faker::Music.instrument }
  end
end
