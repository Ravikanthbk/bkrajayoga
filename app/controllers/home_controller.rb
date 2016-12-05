class HomeController < ApplicationController
  def index
    @mini_carousels = Admin::MiniCarousel.where(active: true)
  end
end
