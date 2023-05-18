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

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    authorize @item
    if @item.update(edit_item_params)
      redirect_to bookings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item
    @item.destroy
    redirect_to bookings_path
  end

  private

  def edit_item_params
    params.require(:item).permit(:category, :brand, :price, :name, :gender, :comment, :tag, :photo)
  end
end
