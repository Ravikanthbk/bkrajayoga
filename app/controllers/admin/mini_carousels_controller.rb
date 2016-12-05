class Admin::MiniCarouselsController < ApplicationController
  before_filter :authorize
  layout "admin"
  before_action :set_admin_mini_carousel, only: [:show, :edit, :update, :destroy]

  # GET /admin/mini_carousels
  # GET /admin/mini_carousels.json
  def index
    @admin_mini_carousels = Admin::MiniCarousel.all
  end

  # GET /admin/mini_carousels/1
  # GET /admin/mini_carousels/1.json
  def show
  end

  # GET /admin/mini_carousels/new
  def new
    @admin_mini_carousel = Admin::MiniCarousel.new
  end

  # GET /admin/mini_carousels/1/edit
  def edit
  end

  # POST /admin/mini_carousels
  # POST /admin/mini_carousels.json
  def create
    @admin_mini_carousel = Admin::MiniCarousel.new(admin_mini_carousel_params)

    respond_to do |format|
      if @admin_mini_carousel.save
        format.html { redirect_to @admin_mini_carousel, notice: 'Mini carousel was successfully created.' }
        format.json { render :show, status: :created, location: @admin_mini_carousel }
      else
        format.html { render :new }
        format.json { render json: @admin_mini_carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/mini_carousels/1
  # PATCH/PUT /admin/mini_carousels/1.json
  def update
    respond_to do |format|
      if @admin_mini_carousel.update(admin_mini_carousel_params)
        format.html { redirect_to @admin_mini_carousel, notice: 'Mini carousel was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_mini_carousel }
      else
        format.html { render :edit }
        format.json { render json: @admin_mini_carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/mini_carousels/1
  # DELETE /admin/mini_carousels/1.json
  def destroy
    @admin_mini_carousel.destroy
    respond_to do |format|
      format.html { redirect_to admin_mini_carousels_url, notice: 'Mini carousel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def sort123
    params[:order].each do |key,value|
      Admin::MiniCarousel.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end
  
  def sort
    Admin::MiniCarousel.all.each do |spec|
      if position = params[:admin_mini_carousels].index(spec.id.to_s)
        spec.update_attribute(:priority, position + 1) unless spec.priority == position + 1
      end
    end
    render :nothing => true, :status => 200
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_mini_carousel
      @admin_mini_carousel = Admin::MiniCarousel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_mini_carousel_params
      params.require(:admin_mini_carousel).permit(:title, :image, :is_url, :url, :description, :active)
    end
end
