class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @by = User.find(@post.user_id)
        @tagss = @post.tags
    end
end