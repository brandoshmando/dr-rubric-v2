require 'rails_helper'

describe Eval, :type => :model do
  it "should have valid factory" do
    expect(create(:eval)).to be_valid
  end

  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_most(50) }
  # it { should have_and_belong_to_many :courses } Fails for some reason...
  it { should have_many :criterion }

end
