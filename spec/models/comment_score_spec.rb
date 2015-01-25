require 'rails_helper'

describe CommentScore, :type => :model do
  it "has valid factory" do
    expect(create(:comment_score)).to be_valid
  end

  it { should validate_presence_of :body }
  it { should ensure_length_of(:body).is_at_most(500) }
  it { should belong_to :comment_scoreable }
end
