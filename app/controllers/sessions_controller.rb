class SessionsController < ApplicationController
  def new; end

  def index; end

  def create
    @current_user = User.find_by(Username: params[:session][:Username])
    if @current_user
      session[:user_id] = @current_user.id
      redirect_to users_path, notice: 'Logged in'

    else
      flash.now.alert = 'User does not exist'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
