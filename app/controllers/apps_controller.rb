class AppsController < ApplicationController
  before_action :authenticate_administrator!, only: [:create, :update, :destroy]
  before_action :set_app, only: %w[ show update destroy ]

  # GET /apps
  # GET /apps.json
  def index
    @apps = App.all.order(id: :desc)
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)

    if @app.save
      render :show, status: :created, location: @app
    else
      render json: @app.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    if @app.update(app_params)
      render :show, status: :ok, location: @app
    else
      render json: @app.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_params
      params.require(:app).permit(:title, :category, :description, :image, :link, :key)
    end
end
