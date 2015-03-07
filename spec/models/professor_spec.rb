require 'rails_helper'

describe Professor do
  it "has valid factory" do
    expect(build(:professor)).to be_valid
  end

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :type }
  it { should have_many :evals }
  it { should have_many :courses }
  it { should have_one :token }

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

    context "last_name is less than fifty charcters" do
      it "is saved successfully" do
        name = "a" * 32
        user = build(:professor, first_name: name)
        expect(user).to be_valid
      end
    end

    context "email is in valid email format" do

      it "is invalid with invalid email format" do
        email = "blahblah"
        user = build(:professor, email: email)
        expect(user).not_to be_valid
      end

      it "is valid with valid email format" do
        email = "blahblah@example.com"
        user = build(:professor, email: email)
        expect(user).to be_valid
      end

      it "is invalid when email exceed max length" do
        a_string = "a" * 26
        email =  a_string + "@" + a_string
        user = build(:professor, email: email)
      end

      it "is invalid when user with email already exists" do
        user1 = create(:professor, email:"brando@example.com")
        user2 = build(:professor, email:"brando@example.com")

        expect(user1).to be_valid
        expect(user2).not_to be_valid
      end
    end
  end
end
