require "spec_helper"
require "vcr"

describe Movie do
  it { should belong_to :user }
  it { should validate_presence_of :user }
  it { should validate_presence_of :title }

  describe "#check" do
    let(:user) { User.create!(:email => "rand@email.com") }

    context "movie is available", :vcr => { :cassette_name => "movie_available" } do
      let(:movie) { Movie.create!(:title => "iron man", :user => user) }
      subject { movie.check }
      it { should be == true }
    end

    context "movie isn't available", :vcr => { :cassette_name => "movie_unavailable" } do
      let(:movie) { Movie.create!(:title => "badjoras123", :user => user) }
      subject { movie.check }
      it { should be == false }
    end
  end
end
