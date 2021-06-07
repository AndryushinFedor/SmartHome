class DevicesController < ApplicationController
  before_action :set_device, only: %i[show edit update destroy]

  def index
    if params[:tags].present?
      @devices = Device.where('tags LIKE ?', "%#{params[:tags]}%")
    else
      @devices = Device.all
    end
    @tags = Device.pluck(:tags).join(',').split(',').map(&:strip)
  end

  def show
  end

  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
  end

  # POST /devices
  # POST /devices.json
  def create
    @device = Device.new(device_params)
    respond_to do |format|
      if @device.save
        format.html { redirect_to @device, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @device }
      else
        format.html { render :new }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devices/1
  # PATCH/PUT /devices/1.json
  def update
    respond_to do |format|
      if @device.update(device_params)
        format.html { redirect_to @device, notice: 'Device was successfully updated.' }
        format.json { render :show, status: :ok, location: @device }
      else
        format.html { render :edit }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    begin
      @device.destroy
    rescue
    end
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_device
    @device = Device.find(params[:id])
  end

  def device_params
    params.require(:device).permit(:tags, :title, :about, :image, :price)
  end
end
