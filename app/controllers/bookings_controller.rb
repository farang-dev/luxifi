class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def show
    authorize(@booking)
  end

  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.user = current_user
    @booking.item = @item
    authorize(@booking)
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(edit_booking_params)
      redirect_to bookings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end

  def edit_booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :status)
  end
end
