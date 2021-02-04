class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to users_path, notice: "Signed up succesfully"
        else
            puts @user.errors.full_messages
            render "new"
        end
    end
    def show
        @user = User.find(params[:id])
        @post = @user.posts.paginate(page: params[:page])
    end
    def index
        @users = User.all
        @users = @users.includes(:posts)
    end
    def user_params
        params.require(:user).permit(:Username, :Fullname, :Photo, :Coverimage)
    end
    
end
