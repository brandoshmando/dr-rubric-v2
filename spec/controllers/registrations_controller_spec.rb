require 'rails_helper'

describe Devise::RegistrationsController, :type => :request do
  context "it should create a professor" do
    post :professors, FactoryGirl.attributes_for(:professor)
  end
end
