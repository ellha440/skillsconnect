class RequiredSkillsController < ApplicationController
  before_action :set_required_skill, only: [:show, :edit, :update, :destroy]

  # GET /required_skills
  # GET /required_skills.json
  def index
    @required_skills = RequiredSkill.all
  end

  # GET /required_skills/1
  # GET /required_skills/1.json
  def show
  end

  # GET /required_skills/new
  def new
    @required_skill = RequiredSkill.new
  end

  # GET /required_skills/1/edit
  def edit
  end

  # POST /required_skills
  # POST /required_skills.json
  def create
    @required_skill = RequiredSkill.new(required_skill_params)

    respond_to do |format|
      if @required_skill.save
        format.html { redirect_to @required_skill, notice: 'Required skill was successfully created.' }
        format.json { render :show, status: :created, location: @required_skill }
      else
        format.html { render :new }
        format.json { render json: @required_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /required_skills/1
  # PATCH/PUT /required_skills/1.json
  def update
    respond_to do |format|
      if @required_skill.update(required_skill_params)
        format.html { redirect_to @required_skill, notice: 'Required skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @required_skill }
      else
        format.html { render :edit }
        format.json { render json: @required_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /required_skills/1
  # DELETE /required_skills/1.json
  def destroy
    @required_skill.destroy
    respond_to do |format|
      format.html { redirect_to required_skills_url, notice: 'Required skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_required_skill
      @required_skill = RequiredSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def required_skill_params
      params.require(:required_skill).permit(:job_id, :skill)
    end
end
