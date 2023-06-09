class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    @user = current_user
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

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :address, :city, :state, :zipcode, :comment)
  end

  def edit_booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :address, :city, :state, :zipcode, :status)
  end
end
