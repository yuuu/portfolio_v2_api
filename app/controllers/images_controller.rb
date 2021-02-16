class ImagesController < ApplicationController
  before_action :authenticate_administrator!, only: [:create]

  # POST /images
  # POST /images.json
  def create
    @signed_url = Image.signed_url(image_params[:filename])
    render :show, status: :ok
  end

  private
    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(:filename)
    end
end
