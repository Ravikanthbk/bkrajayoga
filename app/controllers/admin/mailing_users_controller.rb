class Admin::MailingUsersController < ApplicationController
  before_filter :authorize
  layout "admin"

  before_action :set_admin_mailing_user, only: [:destroy]

  def index
    @admin_mailing_list = MailingUser.order('created_at desc')    
  end

  def destroy
    puts "========================================"
    puts @admin_mailing_user.inspect
    puts "========================================"
    @admin_mailing_user.destroy
    respond_to do |format|
      format.html { redirect_to admin_mailing_users_url, notice: 'User successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_mailing_user
      @admin_mailing_user = MailingUser.find(params[:id])
    end
end
