class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @items = policy_scope(Item)
  end

  def show
    @item = Item.find(params[:id])
    authorize(@item)
  end

  def new
    @item = Item.new
    authorize(@item)
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    authorize(@item)
    if @item.save
      redirect_to bookings_path(current_user)
    else
      render :new, status, :unprocessable_entity
    end
  end

  def item_params
    params.require(:item).permit(:category, :brand, :price, :name, :gender, :comment, :tags)
  end
end
