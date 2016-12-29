class Admin::EventsController < ApplicationController
#  http_basic_authenticate_with name: ENV['admin_username'], password: ENV['admin_password']
  before_filter :authorize  
  layout "admin"

  before_action :set_admin_event, only: [:show, :edit, :update, :destroy, :user_list, :registrations, :email_reminder]

  # GET /admin/events
  # GET /admin/events.json
  def index
    #@admin_events = Admin::Event.order(:created_at)
    @admin_events = Admin::Event.order('date_from desc')
  end

  # GET /admin/events/1
  # GET /admin/events/1.json
  def show
  end

  # GET /admin/events/new
  def new
    @admin_event = Admin::Event.new
  end

  # GET /admin/events/1/edit
  def edit
  end

  # POST /admin/events
  # POST /admin/events.json
  def create
    @admin_event = Admin::Event.new(admin_event_params)
    respond_to do |format|
      if @admin_event.save
        format.html { redirect_to @admin_event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @admin_event }
      else
        format.html { render :new }
        format.json { render json: @admin_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/events/1
  # PATCH/PUT /admin/events/1.json
  def update
    respond_to do |format|
      if @admin_event.update(admin_event_params)
        format.html { redirect_to @admin_event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_event }
      else
        format.html { render :edit }
        format.json { render json: @admin_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/events/1
  # DELETE /admin/events/1.json
  def destroy
    @admin_event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def user_list
    @users = UserRegistration.where(:admin_event_id => params["id"])
  end

  def registrations
    @users = UserRegistration.where(:admin_event_id => params["id"])
    render xlsx: "registrations", template: "admin/events/registrations.xlsx"
  end
  
  def email_reminder
    UserMailer.reminder_email(@admin_event, params["send_email"]).deliver_later unless params["send_email"].blank?
    respond_to do |format|
      unless params["send_email"].blank?
        format.html { redirect_to user_list_admin_event_url(@admin_event), notice: 'Email Reminder sent successfully!' }
      else
        format.html { redirect_to user_list_admin_event_url(@admin_event), notice: 'Email Reminder not sent successfully!' }
      end
    end      
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_event
      @admin_event = Admin::Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_event_params
      params.require(:admin_event).permit(:date_from, :date_to, :descript, :filename, :ticker, :name, :admin_event_type_id, :admin_venue_id, :registration)
    end
end
