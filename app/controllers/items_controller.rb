class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @items = policy_scope(Item)
      if params[:query].present?
        @items = @items.search(params[:query])
      end
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
