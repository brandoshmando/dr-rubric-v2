require_relative '../../rails_helper'

describe Professor do
  it "has valid factory" do
    expect(build(:professor)).to be_valid
  end

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :type }
end