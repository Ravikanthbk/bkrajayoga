class HomeController < ApplicationController
  def index
    @photos = Admin::Photo.order('created_at').limit(3)
  end
end
