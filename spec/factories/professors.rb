FactoryGirl.define do
  factory :professor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { "blahblah" }
    password_confirmation { "blahblah" }
  end
end