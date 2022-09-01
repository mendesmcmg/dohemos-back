class BloodTypesController < ApplicationController
  before_action :set_blood_type, only: [:show, :update, :destroy]

  # GET /blood_types
  def index
    @blood_types = BloodType.all

    render json: @blood_types
  end

  # GET /blood_types/1
  def show
    render json: @blood_type
  end

  # POST /blood_types
  def create
    @blood_type = BloodType.new(blood_type_params)

    if @blood_type.save
      render json: @blood_type, status: :created, location: @blood_type
    else
      render json: @blood_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blood_types/1
  def update
    if @blood_type.update(blood_type_params)
      render json: @blood_type
    else
      render json: @blood_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blood_types/1
  def destroy
    @blood_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_type
      @blood_type = BloodType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blood_type_params
      params.fetch(:blood_type, {})
    end
end
