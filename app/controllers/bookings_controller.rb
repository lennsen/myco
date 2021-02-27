class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user).order(created_at: :desc)
    authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(set_params)
    @space = Space.find(params[:space_id])
    @booking.space = @space
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to bookings_path
    else
      render "spaces/show"
    end
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(set_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.delete
    redirect_to bookings_path
  end

  def confirm
    @booking = Booking.find(params[:booking_id])
    if params[:status] == "Accepted"
      @booking.status = "Accepted"
    elsif params[:status] == "Declined"
        @booking.status = "Declined"
    end
    @booking.save
    redirect_to hostings_bookings_path
    authorize @booking
  end

  def hostings
    @user = current_user
    @hostings = @user.hostings
    authorize @hostings
  end

  private

  def set_params
    params.require(:booking).permit(:start_date, :end_date, :message_to_host)
  end


end
