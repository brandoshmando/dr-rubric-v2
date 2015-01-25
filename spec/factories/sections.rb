FactoryGirl.define do
  factory :section do
    title { Faker::Lorem.characters(50) }
  end
end