class ItemsController < ApplicationController
  def index
    authorize @items
  end

  def show
    authorize @item
  end

  def new
    authorize @item
  end

  def create
    authorize @item
  end
end
