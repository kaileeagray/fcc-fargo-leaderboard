class CamperProfilesController < ApplicationController

    def index
      @camper_profiles = CamperProfile.all
    end

    def show
      find_camper
    end

    def new
      @camper_profile = CamperProfile.new
    end

    def create
      @camper = CamperProfile.create(camper_profile_params)
      redirect_to camper_profile_path(@camper)
    end

    def edit
      find_camper
    end

    def update
      find_camper
      @camper_profile.update(camper_profile_params)
      redirect_to attraction_path(@attraction)
    end

    private

    def camper_profile_params
      params.require(:camper_profile).permit(:username, :points, :user_id)
    end

    def find_camper
      @camper_profile = CamperProfile.find_by(id: params[:id])
    end

end
