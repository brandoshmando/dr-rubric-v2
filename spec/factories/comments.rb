FactoryGirl.define do
  factory :comment do
    body { Faker::Lorem.characters(500) }
  end
end