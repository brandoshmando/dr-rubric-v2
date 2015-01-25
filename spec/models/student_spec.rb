require 'rails_helper'

describe Student, :type => :model do
  it "has a valid factory" do
    expect(create(:student)).to be_valid
  end
end
