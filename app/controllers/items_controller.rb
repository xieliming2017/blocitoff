class ItemsController < ApplicationController
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
end
