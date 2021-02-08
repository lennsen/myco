class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @private_spaces = Space.where(space_type: "PRIVATE")
    @community_spaces = Space.where(space_type: "COMMUNITY")
    @corporate_spaces = Space.where(space_type: "CORPORATE")
    @professional_spaces = Space.where(space_type: "PROFESSIONAL")
  end
end
