class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item)

  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
    authorize @item
  end

  def create
    authorize @item
  end
end
