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
    authorize(@item)
  end

  def create
    authorize(@item)
  end
end
