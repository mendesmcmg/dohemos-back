class BloodCentersController < ApplicationController
  before_action :set_blood_center, only: [:show, :update, :destroy]

  # GET /blood_centers
  def index
    @blood_centers = BloodCenter.all

    render json: @blood_centers
  end

  # GET /blood_centers/1
  def show
    render json: @blood_center
  end

  # POST /blood_centers
  def create
    @blood_center = BloodCenter.new(blood_center_params)

    if @blood_center.save
      render json: @blood_center, status: :created, location: @blood_center
    else
      render json: @blood_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blood_centers/1
  def update
    if @blood_center.update(blood_center_params)
      render json: @blood_center
    else
      render json: @blood_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blood_centers/1
  def destroy
    @blood_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_center
      @blood_center = BloodCenter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blood_center_params
      params.fetch(:blood_center, {})
    end
end
