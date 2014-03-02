class User < ActiveRecord::Base
  has_many :movies
  validates :email, presence: true

  def check_all_movies
    movies.each do |movie|
      if movie.exists?
        NotifyMovie.movie_available_email(self, movie)
        movie.destroy
      end
    end
  end
end
