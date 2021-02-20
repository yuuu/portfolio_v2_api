class SkillsController < ApplicationController
  before_action :authenticate_administrator!, only: [:create, :update, :destroy]
  before_action :set_skill, only: %w[ show update destroy ]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all.order(id: :desc)
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      render :show, status: :created, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    if @skill.update(skill_params)
      render :show, status: :ok, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:title, :key)
    end
end
