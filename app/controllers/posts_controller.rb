class PostsController < ApplicationController
    

before_action :authorize, only: [:edit, :update, :create, :show]
def new
@post = Post.new
end
    def create
        @post = current_user.posts.new(post_params)
        # @post = current_user.posts.build(params[:posts])
        if @post.save
            redirect_to users_path, notice: "Post created"
            
        else
            puts @post.errors.full_messages
        end
    end
    def index
     @posts = Post.all.includes(:user)  
    end
    def destroy
        
    end

    def post_params
        params.require(:post).permit(:content)
      end
end
