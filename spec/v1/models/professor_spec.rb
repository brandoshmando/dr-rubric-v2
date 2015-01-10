require_relative '../../rails_helper'

describe Professor do
  it "has valid factory" do
    expect(build(:professor)).to be_valid
  end

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :type }

  describe "model validates" do
    context "first_name is greater than fifty charcters" do
      it "is not saved successfully" do
        name = "a" * 51
        user = build(:professor, first_name: name)
        expect(user).not_to be_valid
      end
    end

    context "first_name is less than fifty charcters" do
      it "is saved successfully" do
        name = "a" * 32
        user = build(:professor, first_name: name)
        expect(user).to be_valid
      end
    end


    context "last_name is greater than fifty charcters" do
      it "is not saved successfully" do
        name = "a" * 51
        user = build(:professor, last_name: name)
        expect(user).not_to be_valid
      end
    end
  end

  context "last_name is less than fifty charcters" do
    it "is saved successfully" do
      name = "a" * 32
      user = build(:professor, first_name: name)
      expect(user).to be_valid
    end
  end
end