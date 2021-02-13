class ProfilesController < ApplicationController
  before_action :authenticate_administrator!, only: [:update]

  # GET /administrators/profiles/1
  # GET /administrators/profiles/1.json
  def show
    @profile = Profile.first
  end

  # PUT /administrators/profiles/1
  # PUT /administrators/profiles/1.json
  def update
    @profile = Profile.first || Profile.new
    @profile.assign_attributes(profile_params)

    if @profile.save
      render :show, status: :ok, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:introduction, :residence, :birthplace, :birthday, :hobby)
    end
end
