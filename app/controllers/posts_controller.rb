class PostsController < ApplicationController
  def index
    @users = User.find(params[:user_id])
    @posts = @users.posts
  end

  def show
    @posts = Post.find(params[:id])
    @comments = @posts.comments
  end
end