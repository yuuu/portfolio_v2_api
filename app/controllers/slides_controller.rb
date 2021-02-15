class SlidesController < ApplicationController
  before_action :authenticate_administrator!, only: [:create, :update, :destroy]
  before_action :set_slide, only: %w[ show update destroy ]

  # GET /slides
  # GET /slides.json
  def index
    @slides = Slide.all.order(published_at: :desc)
  end

  # GET /slides/1
  # GET /slides/1.json
  def show
  end

  # POST /slides
  # POST /slides.json
  def create
    @slide = Slide.new(slide_params)

    if @slide.save
      render :show, status: :created, location: @slide
    else
      render json: @slide.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /slides/1
  # PATCH/PUT /slides/1.json
  def update
    if @slide.update(slide_params)
      render :show, status: :ok, location: @slide
    else
      render json: @slide.errors, status: :unprocessable_entity
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.json
  def destroy
    @slide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slide_params
      params[:slide][:published_at] = params[:publishedAt]
      params.fetch(:slide, {}).permit(:title, :body, :image, :published_at, :link)
    end
end
