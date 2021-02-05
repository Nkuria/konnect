class PostsController < ApplicationController
    

before_action :authorize, only: [:edit, :update]
def new
    @post = Post.new
end
    def create
        @post = current_user.posts.build(params[:posts])
        if @post.save
            Flash[:Succes] = "Post succesfully created"
        else
            puts errors.full_messages
        end
    end
    def destroy
        
    end
end
