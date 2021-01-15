class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:location].present?
      @spaces = policy_scope(Space).near(params[:location], 5, units: :km)
    else
      @spaces = policy_scope(Space).all
    end
  end
end
