class UserRegistrationsController < ApplicationController
  def new
    @event = Admin::Event.find(params[:register])
    @user_registration = UserRegistration.new
  end

  def create
    @user_registration = UserRegistration.new(user_registration_params)

    respond_to do |format|
      if @user_registration.save
        UserMailer.welcome_email(@user_registration).deliver_later
        format.html { redirect_to @user_registration, notice: 'Registered successfully.' }
        format.json { render :show, status: :created, location: @user_registration }
      else
        format.html { render :new }
        format.json { render json: @user_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_registration_params
      params.require(:user_registration).permit(:admin_event_id, :name, :email, :tel_mobile_no, :no_of_places_or_people, :name, :comments)
    end
end
