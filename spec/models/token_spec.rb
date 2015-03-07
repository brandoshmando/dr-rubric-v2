require 'rails_helper'

describe Token, :type => :model do
  it 'has valid factory' do
    expect(create(:token)).to be_valid
  end

  it { should validate_presence_of :value }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :expires_at }
  it { should belong_to :user }
end

