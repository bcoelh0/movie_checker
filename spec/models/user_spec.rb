require "spec_helper"

describe User do
  it { should validate_presence_of :email }
  it { should have_many :movies }

  describe "#check_all_movies", :vcr => { :cassette_name => "user_movies" } do
    let(:user) { User.create!(:email => "rand@email.com") }
    let(:movie_available) { Movie.create!(:title => "iron man", :user => user) }
    let(:movie_unavailable) { Movie.create!(:title => "badjoras123", :user => user) }

    before do
      user.movies << movie_available
      user.movies << movie_unavailable
      user.save!
    end
    it "removes movie available" do
      expect { user.check_all_movies }.to change(Movie, :count).by(-1)
    end
  end
end
