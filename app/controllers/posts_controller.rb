class PostsController < ApplicationController
    

before_filter :authorize, only: [:edit, :update]
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
