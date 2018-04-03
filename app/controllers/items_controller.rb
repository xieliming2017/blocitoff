class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user
    if @item.save
      redirect_to current_user
    else
      flash.now[:alert] = "An error ouccurred. Please try again."
      redirect_to current_user
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @user = @item.user
    if @item.destroy
      respond_to do |format|
        format.js
      end
    end
  end
end
