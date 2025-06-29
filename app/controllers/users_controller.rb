class UsersController < ApplicationController
  def show
    @user = current_user
    @posts = @user.posts.order(recorded_on: :desc)
  end
end
