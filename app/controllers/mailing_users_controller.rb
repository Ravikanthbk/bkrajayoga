class MailingUsersController < ApplicationController
  def new
    @mailing_user = MailingUser.new
  end

  def create
    @mailing_user = MailingUser.new(mailing_user_params)
    respond_to do |format|
      if @mailing_user.save
        format.html { redirect_to @mailing_user, notice: 'Registered successfully.' }
        format.json { render :show, status: :created, location: @mailing_user }
      else
        format.html { render :new }
        format.json { render json: @mailing_user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
  end  

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def mailing_user_params
      params.require(:mailing_user).permit(:name, :email, :phone_no)
    end
end
