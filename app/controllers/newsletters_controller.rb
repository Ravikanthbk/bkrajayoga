class NewslettersController < ApplicationController  
  def index
    @newsletters = Admin::Newsletter.all
  end

  def show
    @newsletter = Admin::Newsletter.find(params[:newsletter_id])
    @pictures = @newsletter.admin_pictures 
  end    
end
