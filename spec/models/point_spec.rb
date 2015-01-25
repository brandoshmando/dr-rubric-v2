require 'rails_helper'

describe Point, :type => :model do
  it "has a valid factory" do
    expect(create(:point)).to be_valid
  end

  it { should validate_presence_of :value }
  it { should belong_to :pointable }
  it { should respond_to :pointable_type }
  it { should respond_to :pointable_id }
end
