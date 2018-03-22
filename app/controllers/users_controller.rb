class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def current_user_profile
    redirect_to current_user
  end
end
