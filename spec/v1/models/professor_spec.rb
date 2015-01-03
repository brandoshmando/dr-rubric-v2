require 'spec_helper'

describe Professor do
  it "has valid factory" do
    expect(build(:professor)).to be_valid
  end
end
