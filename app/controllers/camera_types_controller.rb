class CameraTypesController < ApplicationController
  before_action :set_camera_type, only: [:show, :edit, :update, :destroy]

  # GET /camera_types
  # GET /camera_types.json
  def index
    @camera_types = CameraType.all
  end

  # GET /camera_types/1
  # GET /camera_types/1.json
  def show
  end

  # GET /camera_types/new
  def new
    @camera_type = CameraType.new
  end

  # GET /camera_types/1/edit
  def edit
  end

  # POST /camera_types
  # POST /camera_types.json
  def create
    @camera_type = CameraType.new(camera_type_params)

    respond_to do |format|
      if @camera_type.save
        format.html { redirect_to @camera_type, notice: 'Camera type was successfully created.' }
        format.json { render :show, status: :created, location: @camera_type }
      else
        format.html { render :new }
        format.json { render json: @camera_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camera_types/1
  # PATCH/PUT /camera_types/1.json
  def update
    respond_to do |format|
      if @camera_type.update(camera_type_params)
        format.html { redirect_to @camera_type, notice: 'Camera type was successfully updated.' }
        format.json { render :show, status: :ok, location: @camera_type }
      else
        format.html { render :edit }
        format.json { render json: @camera_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camera_types/1
  # DELETE /camera_types/1.json
  def destroy
    @camera_type.destroy
    respond_to do |format|
      format.html { redirect_to camera_types_url, notice: 'Camera type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera_type
      @camera_type = CameraType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camera_type_params
      params.require(:camera_type).permit(:name)
    end
end
