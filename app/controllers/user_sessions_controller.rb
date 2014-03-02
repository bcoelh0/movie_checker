class UserSessionsController < ApplicationController
  def new
    #login/register
    redirect_to user_movies_path(current_user) unless current_user.nil?
  end

  def create
    user = User.find_or_create_by(email: params[:email])
    session[:user_id] = user.id
    redirect_to user_movies_path(user)
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
