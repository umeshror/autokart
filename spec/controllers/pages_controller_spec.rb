require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET Home" do
    it "returns http success" do
      get :Home
      expect(response).to be_success
    end
  end

  describe "GET About_Us" do
    it "returns http success" do
      get :About_Us
      expect(response).to be_success
    end
  end

  describe "GET Contact_Us" do
    it "returns http success" do
      get :Contact_Us
      expect(response).to be_success
    end
  end

  describe "GET Blog" do
    it "returns http success" do
      get :Blog
      expect(response).to be_success
    end
  end

  describe "GET FAQs" do
    it "returns http success" do
      get :FAQs
      expect(response).to be_success
    end
  end

end
