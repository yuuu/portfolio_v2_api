class ImagesController < ApplicationController
  before_action :authenticate_administrator!, only: [:create]

  # GET /images/1
  # GET /images/1.json
  def show
    @key = params[:id]
    @signed_url = Image.signed_url(@key, :get_object)
  end

  # POST /images
  # POST /images.json
  def create
    @key = SecureRandom.uuid
    @signed_url = Image.signed_url(@key, :put_object)
    render :show, status: :ok
  end
end
