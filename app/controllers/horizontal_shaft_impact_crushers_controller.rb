class HorizontalShaftImpactCrushersController < ApplicationController
  before_action :set_horizontal_shaft_impact_crusher, only: [:show, :edit, :update, :destroy]

  # GET /horizontal_shaft_impact_crushers
  # GET /horizontal_shaft_impact_crushers.json
  def index
    @location = Location.find(params[:location_id])
    @horizontal_shaft_impact_crushers = @location.horizontal_shaft_impact_crushers
  end

  # GET /horizontal_shaft_impact_crushers/1
  # GET /horizontal_shaft_impact_crushers/1.json
  def show
    @location = @horizontal_shaft_impact_crusher.location
  end

  # GET /horizontal_shaft_impact_crushers/new
  def new
    @location = Location.find(params[:location_id])
    @horizontal_shaft_impact_crusher = @location.horizontal_shaft_impact_crushers.new
  end

  # GET /horizontal_shaft_impact_crushers/1/edit
  def edit
  end

  # POST /horizontal_shaft_impact_crushers
  # POST /horizontal_shaft_impact_crushers.json
  def create
    @location = Location.find(params[:location_id])
    @horizontal_shaft_impact_crusher = HorizontalShaftImpactCrusher.new(horizontal_shaft_impact_crusher_params)
    @horizontal_shaft_impact_crusher.location = @location

    respond_to do |format|
      if @horizontal_shaft_impact_crusher.save
        format.html { redirect_to @horizontal_shaft_impact_crusher, notice: 'Horizontal shaft impact crusher was successfully created.' }
        format.json { render :show, status: :created, location: @horizontal_shaft_impact_crusher }
      else
        format.html { render :new }
        format.json { render json: @horizontal_shaft_impact_crusher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horizontal_shaft_impact_crushers/1
  # PATCH/PUT /horizontal_shaft_impact_crushers/1.json
  def update
    respond_to do |format|
      if @horizontal_shaft_impact_crusher.update(horizontal_shaft_impact_crusher_params)
        format.html { redirect_to @horizontal_shaft_impact_crusher, notice: 'Horizontal shaft impact crusher was successfully updated.' }
        format.json { render :show, status: :ok, location: @horizontal_shaft_impact_crusher }
      else
        format.html { render :edit }
        format.json { render json: @horizontal_shaft_impact_crusher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horizontal_shaft_impact_crushers/1
  # DELETE /horizontal_shaft_impact_crushers/1.json
  def destroy
    @horizontal_shaft_impact_crusher.destroy
    respond_to do |format|
      format.html { redirect_to horizontal_shaft_impact_crushers_url, notice: 'Horizontal shaft impact crusher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horizontal_shaft_impact_crusher
      @horizontal_shaft_impact_crusher = HorizontalShaftImpactCrusher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horizontal_shaft_impact_crusher_params
      params.require(:horizontal_shaft_impact_crusher).permit(:name, :drive_diameter, :driven_diameter, :rpm, :roto_diameter, :shaft_rpm, :tip_speed, :location_id )
    end
end
