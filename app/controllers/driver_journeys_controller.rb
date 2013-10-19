class DriverJourneysController < ApplicationController
  before_action :set_driver_journey, only: [:show, :edit, :update, :destroy]

  # GET /driver_journeys
  # GET /driver_journeys.json
  def index
    @driver_journeys = DriverJourney.all
  end

  # GET /driver_journeys/1
  # GET /driver_journeys/1.json
  def show
  end

  # GET /driver_journeys/new
  def new
    @driver_journey = DriverJourney.new
  end

  # GET /driver_journeys/1/edit
  def edit
  end

  # POST /driver_journeys
  # POST /driver_journeys.json
  def create
    @driver_journey = DriverJourney.new(driver_journey_params)

    respond_to do |format|
      if @driver_journey.save
        format.html { redirect_to @driver_journey, notice: 'Driver journey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @driver_journey }
      else
        format.html { render action: 'new' }
        format.json { render json: @driver_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_journeys/1
  # PATCH/PUT /driver_journeys/1.json
  def update
    respond_to do |format|
      if @driver_journey.update(driver_journey_params)
        format.html { redirect_to @driver_journey, notice: 'Driver journey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @driver_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_journeys/1
  # DELETE /driver_journeys/1.json
  def destroy
    @driver_journey.destroy
    respond_to do |format|
      format.html { redirect_to driver_journeys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_journey
      @driver_journey = DriverJourney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_journey_params
      params[:driver_journey]
    end
end
