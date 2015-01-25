require 'rails_helper'

describe Section, :type => :model do
  it "has a valid factory" do
    expect(create(:section)).to be_valid
  end

  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_most(50) }
  it { should have_many :grades }
  it { should have_and_belong_to_many :assistants }
  it { should have_and_belong_to_many :rosters }
  it { should belong_to :course }
end
