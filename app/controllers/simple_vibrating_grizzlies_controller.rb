class SimpleVibratingGrizzliesController < ApplicationController
  before_action :set_simple_vibrating_grizzly, only: [:show, :edit, :update, :destroy]

  # GET /simple_vibrating_grizzlies
  # GET /simple_vibrating_grizzlies.json
  def index
    @simple_vibrating_grizzlies = SimpleVibratingGrizzly.all
  end

  # GET /simple_vibrating_grizzlies/1
  # GET /simple_vibrating_grizzlies/1.json
  def show
  end

  # GET /simple_vibrating_grizzlies/new
  def new
    @simple_vibrating_grizzly = SimpleVibratingGrizzly.new
  end

  # GET /simple_vibrating_grizzlies/1/edit
  def edit
  end

  # POST /simple_vibrating_grizzlies
  # POST /simple_vibrating_grizzlies.json
  def create
    @simple_vibrating_grizzly = SimpleVibratingGrizzly.new(simple_vibrating_grizzly_params)

    respond_to do |format|
      if @simple_vibrating_grizzly.save
        format.html { redirect_to @simple_vibrating_grizzly, notice: 'Simple vibrating grizzly was successfully created.' }
        format.json { render :show, status: :created, location: @simple_vibrating_grizzly }
      else
        format.html { render :new }
        format.json { render json: @simple_vibrating_grizzly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_vibrating_grizzlies/1
  # PATCH/PUT /simple_vibrating_grizzlies/1.json
  def update
    respond_to do |format|
      if @simple_vibrating_grizzly.update(simple_vibrating_grizzly_params)
        format.html { redirect_to @simple_vibrating_grizzly, notice: 'Simple vibrating grizzly was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_vibrating_grizzly }
      else
        format.html { render :edit }
        format.json { render json: @simple_vibrating_grizzly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_vibrating_grizzlies/1
  # DELETE /simple_vibrating_grizzlies/1.json
  def destroy
    @simple_vibrating_grizzly.destroy
    respond_to do |format|
      format.html { redirect_to simple_vibrating_grizzlies_url, notice: 'Simple vibrating grizzly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_vibrating_grizzly
      @simple_vibrating_grizzly = SimpleVibratingGrizzly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_vibrating_grizzly_params
      params.require(:simple_vibrating_grizzly).permit(:column_name, :nominal_opening, :grizzly_width, :grizzly_length)
    end
end
