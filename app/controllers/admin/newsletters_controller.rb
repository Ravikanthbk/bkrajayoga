class Admin::NewslettersController < ApplicationController
  before_filter :authorize
  layout "admin"
  before_action :set_admin_newsletter, only: [:show, :edit, :update, :destroy, :image_delete]

  # GET /admin/newsletters
  # GET /admin/newsletters.json
  def index
    @admin_newsletters = Admin::Newsletter.all
  end

  # GET /admin/newsletters/1
  # GET /admin/newsletters/1.json
  def show
  end

  # GET /admin/newsletters/new
  def new
    @admin_newsletter = Admin::Newsletter.new
  end

  # GET /admin/newsletters/1/edit
  def edit
  end

  # POST /admin/newsletters
  # POST /admin/newsletters.json
  def create
    @admin_newsletter = Admin::Newsletter.new(admin_newsletter_params)

    respond_to do |format|
      if @admin_newsletter.save
        if params[:images]
           params[:images].each { |image|
             @admin_newsletter.admin_pictures.create(image: image)
           }
         end
        format.html { redirect_to @admin_newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render :show, status: :created, location: @admin_newsletter }
      else
        format.html { render :new }
        format.json { render json: @admin_newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/newsletters/1
  # PATCH/PUT /admin/newsletters/1.json
  def update
    respond_to do |format|
      if @admin_newsletter.update(admin_newsletter_params)
        if params[:images]
           params[:images].each { |image|
             @admin_newsletter.admin_pictures.create(image: image)
           }
         end        
        format.html { redirect_to @admin_newsletter, notice: 'Newsletter was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_newsletter }
      else
        format.html { render :edit }
        format.json { render json: @admin_newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/newsletters/1
  # DELETE /admin/newsletters/1.json
  def destroy
    @admin_newsletter.destroy
    respond_to do |format|
      format.html { redirect_to admin_newsletters_url, notice: 'Newsletter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def image_delete
    #raise params.inspect
    Admin::Picture.find(params["picture_id"]).destroy
    @admin_newsletter = Admin::Newsletter.find(params["newsletter_id"])
    respond_to do |format|
      format.html { render :edit }
    end    
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_newsletter
      @admin_newsletter = Admin::Newsletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_newsletter_params
      params.require(:admin_newsletter).permit(:title, :images, :priority)
    end
end
