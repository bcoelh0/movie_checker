require 'spec_helper'

describe MoviesController do
  let(:user) { User.create!(email: "rand@email.com") }
  let(:movie) { Movie.create!(title: "random title", user: user) }
  before { controller.stub(:current_user).and_return(user) }

  describe "GET 'index'" do
    it "returns http success" do
      get :index, user_id: user.id
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new, user_id: user.id
      response.should be_success
    end
  end

  describe "POST 'destroy'" do
    it "returns http success" do
      post :destroy, user_id: user.id, id: movie.id
      response.should redirect_to user_movies_path user
    end
  end
end
