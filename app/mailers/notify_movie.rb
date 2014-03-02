class NotifyMovie < ActionMailer::Base
  default from: "from@example.com"

  def movie_available_email(user, movie, download_url)
    @user = user
    @movie = movie
    @download_url = download_url
    mail(to: @user.email, subject: "#{movie} is now available!")
  end
end
