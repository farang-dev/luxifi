class BookingsController < ApplicationController
  def index
    # authorize @bookings
  end

  def show
    # authorize @booking
  end

  def new
    authorize @booking
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end

  def create
    # authorize @booking
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    if @booking.save
      redirect_to item_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end
end
