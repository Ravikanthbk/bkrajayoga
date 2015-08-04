class ExperiencesController < ApplicationController
  def index
    #@experiences = Experience.all
    @experiences = Experience.order(created_at: :desc)
  end

  def show
    @experience = Experience.find(params[:id])
  end
end
