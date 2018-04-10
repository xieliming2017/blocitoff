class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to current_user
      flash[:notice] = 'Access denied!'
    end
  end

  def current_user_profile
    redirect_to current_user
  end
end
