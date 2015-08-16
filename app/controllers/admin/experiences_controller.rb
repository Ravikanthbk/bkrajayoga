class Admin::ExperiencesController < ApplicationController
  http_basic_authenticate_with name: ENV['admin_username'], password: ENV['admin_password']
  layout "admin"

  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  # GET /admin/experiences
  # GET /admin/experiences.json
  def index
    #@experiences = Experience.all
    @experiences = Experience.order(created_at: :desc)
  end

  # GET /admin/experiences/1
  # GET /admin/experiences/1.json
  def show
  end

  # GET /admin/experiences/new
  def new
    @experience = Experience.new
  end

  # GET /admin/experiences/1/edit
  def edit
  end

  # POST /admin/experiences
  # POST /admin/experiences.json
  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        format.html { redirect_to [:admin, @experience], notice: 'Experience was successfully created.' }
        format.json { render action: 'show', status: :created, location: @experience }
      else
        format.html { render action: 'new' }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/experiences/1
  # PATCH/PUT /admin/experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to [:admin, @experience], notice: 'Experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/experiences/1
  # DELETE /admin/experiences/1.json
  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to admin_experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.require(:experience).permit(:title, :content, :published, :published_at)
    end
end
