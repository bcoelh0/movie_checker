class MoviesController < ApplicationController
  def index
    @movies = current_user.movies
  end

  def new
    @user = current_user
    @movie = current_user.movies.build
  end

  def create
    current_user.movies.create(movie_params)
    redirect_to user_movies_path current_user
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to user_movies_path current_user
  end

  private
  def movie_params
    params.require(:movie).permit(:title)
  end
end
