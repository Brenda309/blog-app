class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
   @last_three_posts = @users.last_three_posts
  end
end