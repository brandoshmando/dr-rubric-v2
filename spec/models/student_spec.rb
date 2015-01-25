require 'rails_helper'

describe Student, :type => :model do
  it "has a valid factory" do
    expect(create(:student)).to be_valid
  end

  it { should validate_presence_of :first_name }
  it { should ensure_length_of(:first_name).is_at_most(50) }
  it { should validate_presence_of :last_name }
  it { should ensure_length_of(:last_name).is_at_most(50) }
  it { should ensure_length_of(:email).is_at_most(100) }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :uid }
  it { should ensure_length_of(:uid).is_at_most(25) }
  it { should validate_uniqueness_of :uid }
end
