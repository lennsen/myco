class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:location].present?
      @spaces = policy_scope(Space).near(params[:location], 5, units: :km)
    else
      @spaces = policy_scope(Space).all
    end

    @markers = @spaces.geocoded.map do |space|
        {
          lat: space.latitude,
          lng: space.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { space: space })
        }
      end
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
    authorize @space
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(set_params)
    @space.user = current_user
    @space.save
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
    authorize @space
  end

  def update
    @space = Space.find(params[:id])
    @space.update(set_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :edit
    end
    authorize @space
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
  end


  def destroy
    @space = Space.find(params[:id])
    @space.user = current_user
    authorize @space
    @space.delete
    redirect_to root_path
  end

  private

  def set_params
    params.require(:space).permit(:title, :description, :space_type, :photo, :price_per_month, :location)
  end

end
