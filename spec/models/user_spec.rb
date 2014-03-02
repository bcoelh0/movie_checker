require "spec_helper"

describe User do
  it { should validate_presence_of :email }
  it { should have_many :movies }

  describe "#check_all_movies" do
    let(:user) { User.create!(:email => "rand@email.com") }
    let(:movie_available) { Movie.create!(:title => "iron man", :user => user) }
    let(:movie_unavailable) { Movie.create!(:title => "badjoras123", :user => user) }
    it "removes movie available" do
      expect { user.check_all_movies }.to change(Movie, :count).by(-1)
    end
  end
end
