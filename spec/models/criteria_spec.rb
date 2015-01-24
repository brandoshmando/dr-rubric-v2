require 'rails_helper'

describe Criteria, :type => :model do
  it "has valid factory" do
    expect(create(:criteria)).to be_valid
  end

  it { should validate_presence_of :body }
  it { should ensure_length_of(:body).is_at_most(500) }
  it { should have_many :comments }
  it { should belong_to :eval }
end
