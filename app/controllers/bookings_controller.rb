class BookingsController < ApplicationController
  def index
    authorize @bookings
  end

  def show
    authorize @booking
  end

  def new
    authorize @booking
  end

  def create
    authorize @booking
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
  end
end
