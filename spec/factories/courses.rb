FactoryGirl.define do
  factory :course do
    title { Faker::Lorem.characters(50) }
    description { Faker::Lorem.characters(255) }
  end
end