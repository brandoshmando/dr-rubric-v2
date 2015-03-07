FactoryGirl.define do
  factory :token do
    value { SecureRandom.uuid.gsub(/\-/,'') }
    expires_at { DateTime.now.to_date + 10.days }
    user_id { 1 }
  end
end