class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end
  
  def create
    @booking = Booking.new(set_params)
    @space = Space.find(params[:space_id])
    @booking.space = @space
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
    authorize @booking
  end

  private

  def set_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
