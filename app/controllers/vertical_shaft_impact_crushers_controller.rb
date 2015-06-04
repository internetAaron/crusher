class VerticalShaftImpactCrushersController < ApplicationController
  before_action :set_vertical_shaft_impact_crusher, only: [:show, :edit, :update, :destroy]

  # GET /vertical_shaft_impact_crushers
  # GET /vertical_shaft_impact_crushers.json
  def index
    @vertical_shaft_impact_crushers = VerticalShaftImpactCrusher.all
  end

  # GET /vertical_shaft_impact_crushers/1
  # GET /vertical_shaft_impact_crushers/1.json
  def show
  end

  # GET /vertical_shaft_impact_crushers/new
  def new
    @vertical_shaft_impact_crusher = VerticalShaftImpactCrusher.new
  end

  # GET /vertical_shaft_impact_crushers/1/edit
  def edit
  end

  # POST /vertical_shaft_impact_crushers
  # POST /vertical_shaft_impact_crushers.json
  def create
    @vertical_shaft_impact_crusher = VerticalShaftImpactCrusher.new(vertical_shaft_impact_crusher_params)

    respond_to do |format|
      if @vertical_shaft_impact_crusher.save
        format.html { redirect_to @vertical_shaft_impact_crusher, notice: 'Vertical shaft impact crusher was successfully created.' }
        format.json { render :show, status: :created, location: @vertical_shaft_impact_crusher }
      else
        format.html { render :new }
        format.json { render json: @vertical_shaft_impact_crusher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vertical_shaft_impact_crushers/1
  # PATCH/PUT /vertical_shaft_impact_crushers/1.json
  def update
    respond_to do |format|
      if @vertical_shaft_impact_crusher.update(vertical_shaft_impact_crusher_params)
        format.html { redirect_to @vertical_shaft_impact_crusher, notice: 'Vertical shaft impact crusher was successfully updated.' }
        format.json { render :show, status: :ok, location: @vertical_shaft_impact_crusher }
      else
        format.html { render :edit }
        format.json { render json: @vertical_shaft_impact_crusher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vertical_shaft_impact_crushers/1
  # DELETE /vertical_shaft_impact_crushers/1.json
  def destroy
    @vertical_shaft_impact_crusher.destroy
    respond_to do |format|
      format.html { redirect_to vertical_shaft_impact_crushers_url, notice: 'Vertical shaft impact crusher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vertical_shaft_impact_crusher
      @vertical_shaft_impact_crusher = VerticalShaftImpactCrusher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vertical_shaft_impact_crusher_params
      params.require(:vertical_shaft_impact_crusher).permit(:drive_diameter, :driven_diameter, :motor_rpm, :rotor_diameter, :name, :location_id)
    end
end
