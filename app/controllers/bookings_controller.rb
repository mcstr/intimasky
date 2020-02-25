class BookingsController < ApplicationController
  before_action :set_mask, only: [:new, :create]

  def index
     @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(:booking_id)

  end

  def new
    @booking = Booking.new

  end

  def create
    @booking = Booking.new
    @booking.mask = @mask
    @booking.user = current_user
    # It has to be this way because of the way flatpicker works with the dates"
    @booking.start_date = params[:booking][:start_date].split("to")[0].strip
    @booking.end_date = params[:booking][:start_date].split("to")[1].strip
      if @booking.save
        redirect_to mask_path(@mask)
      else
        render :new
      end
    end

private

  def set_mask
    @mask = Mask.find(params[:mask_id])
  end
end
