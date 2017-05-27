class Admin::PhotosController < ApplicationController
  before_filter :authorize
  layout "admin"
  before_action :set_admin_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Admin::Photo.all #order('created_at')
  end

  def show
  end  

  def new
    @admin_photo = Admin::Photo.new
  end

   # GET /admin/mini_carousels/1/edit
  def edit
  end 

  def create
    @admin_photo = Admin::Photo.new(photo_params)
    if @admin_photo.save
      flash[:success] = "The photo was added!"
      redirect_to admin_photos_url
    else
      render 'new'
    end
  end

 def update
    respond_to do |format|
      if @admin_photo.update(photo_params)
        format.html { redirect_to @admin_photo, notice: 'Photo was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end 

  def destroy
    @admin_photo.destroy
    @admin_photo.image.clear
    respond_to do |format|
      format.html { redirect_to admin_photos_url, notice: 'Photo was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_photo
    @admin_photo = Admin::Photo.find(params[:id])
  end

  def photo_params
    params.require(:admin_photo).permit(:title, :image, :is_url, :url, :description, :active)
  end

end
