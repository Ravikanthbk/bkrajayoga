class Admin::PhotosController < ApplicationController
  before_filter :authorize
  layout "admin"

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

  private

  def photo_params
    params.require(:admin_photo).permit(:image, :title, :description)
  end

end
