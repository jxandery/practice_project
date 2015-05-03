class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username], password_digest: params[:password_digest], email: params[:email])
    render :new
  end

end
