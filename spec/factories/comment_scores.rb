FactoryGirl.define do
  factory :comment_score do
    body { Faker:: Lorem.characters(500) }
  end
end
