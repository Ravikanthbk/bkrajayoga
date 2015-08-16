class Admin::CommentsController < ApplicationController
  http_basic_authenticate_with name: ENV['admin_username'], password: ENV['admin_password']
  layout "admin"
 
end
