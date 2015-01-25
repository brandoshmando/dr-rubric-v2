require 'rails_helper'

describe Course, :type => :model do
  it "has a valid factory" do
    expect(create(:course)).to be_valid
  end

  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_most(50) }
  it { should validate_presence_of :description }
  it { should ensure_length_of(:description).is_at_most(255) }
  it { should belong_to :professor }
  it { should have_and_belong_to_many :evals }
  it { should have_and_belong_to_many :grading_periods }
  it { should have_many :sections }
end
