require 'rails_helper'

describe Comment, :type => :model do
  it "has valid factory" do
    expect(create(:comment)).to be_valid
  end
end
