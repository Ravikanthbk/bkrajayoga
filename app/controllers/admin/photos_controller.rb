class Admin::PhotosController < ApplicationController
  before_filter :authorize
  layout "admin"
  before_action :set_admin_photo, only: [:destroy]

  def index
    @photos = Admin::Photo.order('created_at')
  end

  def new
    @photo = Admin::Photo.new
  end

  def create
    @photo = Admin::Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to admin_photos_url
    else
      render 'new'
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
    params.require(:admin_photo).permit(:image, :title, :description)
  end

end
