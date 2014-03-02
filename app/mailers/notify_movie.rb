class NotifyMovie < ActionMailer::Base
  default from: "from@example.com"

  def movie_available_email(user, movie)
    @user = user
    @movie = movie
    @download_url =
      "http://thepiratebay.se/search/#{URI::encode(movie.title)}/0/7/202"
    mail(to: @user.email, subject: "#{movie.title} is now available!")
  end
end
