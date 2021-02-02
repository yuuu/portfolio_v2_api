class ProfilesController < ApplicationController
  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.first
  end
end
