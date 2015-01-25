FactoryGirl.define do
  factory :criteria do
    body { Faker::Lorem.characters(500) }
    total_points { 100.00 }
  end
end