class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Signed up succesfully"
        else
            render "new"
        end
    end
    def show
        @user = User.find(params[:id])
        @post = @user.posts.paginate(page: params[:page])
    end
    def index
        @user = User.all
    end
    def user_params
        params.require(:user).permit(:Username, :Fullname, :Photo, :Coverimage)
    end
    
end
