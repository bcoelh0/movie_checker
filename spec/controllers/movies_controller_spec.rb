require 'spec_helper'

describe MoviesController do
  describe "GET 'index'" do
    let(:user) { User.create!(:email => "rand@email.com") }
    before do
      controller.stub(:current_user).and_return(user)
    end
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end
end
