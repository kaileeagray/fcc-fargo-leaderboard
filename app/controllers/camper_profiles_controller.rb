class CamperProfilesController < ApplicationController
  def index
    @camper_profiles = CamperProfile.all
  end
end
