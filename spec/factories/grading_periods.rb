FactoryGirl.define do
  factory :grading_period do
    title { Faker::Lorem.characters(75) }
    start_date { Faker::Time.backward(15, :morning) }
    end_date { Faker::Time.forward(15, :morning) }
  end
end