require 'rails_helper'

describe Comment, :type => :model do
  it "has valid factory" do
    expect(create(:comment)).to be_valid
  end

  it { should validate_presence_of :body }
  it { should ensure_length_of(:body).is_at_most(500) }
  it { should have_many :comment_scores }
  it { should belong_to :criteria }

end
