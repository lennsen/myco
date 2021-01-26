class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @private_spaces = Space.where(space_type: "Private Space")
    @community_spaces = Space.where(space_type: "Community Space")
    @corporate_spaces = Space.where(space_type: "Corporate Space")
    @professional_spaces = Space.where(space_type: "Professional Space")
  end
end
