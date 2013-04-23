class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # handle a successful update
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      # print the errors to the development log
      Rails.logger.info(@user.errors.messages.inspect)
      # flash[:error] = "Something wrong? Profile NOT updated"
      render 'edit'
    end
  end
end
