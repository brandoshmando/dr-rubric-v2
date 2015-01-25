require 'rails_helper'

describe CommentScore, :type => :model do
  it "has valid factory" do
    expect(create(:comment_score)).to be_valid
  end
end
