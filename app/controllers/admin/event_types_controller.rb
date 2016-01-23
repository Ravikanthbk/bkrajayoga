class Admin::EventTypesController < ApplicationController
  #http_basic_authenticate_with name: ENV['admin_username'], password: ENV['admin_password']
  before_filter :authorize
  layout "admin"
  
  before_action :set_admin_event_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/event_types
  # GET /admin/event_types.json
  def index
    @admin_event_types = Admin::EventType.all
  end

  # GET /admin/event_types/1
  # GET /admin/event_types/1.json
  def show
  end

  # GET /admin/event_types/new
  def new
    @admin_event_type = Admin::EventType.new
  end

  # GET /admin/event_types/1/edit
  def edit
  end

  # POST /admin/event_types
  # POST /admin/event_types.json
  def create
    @admin_event_type = Admin::EventType.new(admin_event_type_params)

    respond_to do |format|
      if @admin_event_type.save
        format.html { redirect_to @admin_event_type, notice: 'Event type was successfully created.' }
        format.json { render :show, status: :created, location: @admin_event_type }
      else
        format.html { render :new }
        format.json { render json: @admin_event_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/event_types/1
  # PATCH/PUT /admin/event_types/1.json
  def update
    respond_to do |format|
      if @admin_event_type.update(admin_event_type_params)
        format.html { redirect_to @admin_event_type, notice: 'Event type was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_event_type }
      else
        format.html { render :edit }
        format.json { render json: @admin_event_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/event_types/1
  # DELETE /admin/event_types/1.json
  def destroy
    @admin_event_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_event_types_url, notice: 'Event type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_event_type
      @admin_event_type = Admin::EventType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_event_type_params
      params.require(:admin_event_type).permit(:name)
    end
end
