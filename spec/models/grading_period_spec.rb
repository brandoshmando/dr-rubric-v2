require 'rails_helper'

describe GradingPeriod, :type => :model do
  it "has a valid factory" do
    expect(create(:grading_period)).to be_valid
  end

  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_most(75) }
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }
  it { should respond_to :type }
  it { should have_and_belong_to_many :courses }
end
