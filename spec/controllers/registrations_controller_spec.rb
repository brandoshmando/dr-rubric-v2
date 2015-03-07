require 'rails_helper'

describe Devise::RegistrationsController, :type => :request do
  context "POST :create" do
    it "should create a new professor" do
      post '/professors/', FactoryGirl.attributes_for(:professor)
    end
  end
end
