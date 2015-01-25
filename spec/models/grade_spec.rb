require 'rails_helper'

describe Grade, :type => :model do
  it "has a valid factory" do
    expect(create(:grade)).to be_valid
  end

  it { should respond_to :gradeable_id }
  it { should respond_to :gradeable_type }
  it { should belong_to :gradeable }
end
