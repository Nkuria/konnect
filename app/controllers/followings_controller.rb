class FollowingsController < ApplicationController
  def new
    @following = Following.new
  end

  def index
    @followings = Following.all
  end

  def create
    @user = User.find(params[:following][:followed_id])
    current_user.follow!(@user)
    redirect_to @user
  end

  def destroy
    @user = Following.find(params[:id]).followed
    current_user.unfollow!(@user)
    redirect_to @user
  end
end
