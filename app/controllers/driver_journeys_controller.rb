class DriverJourneysController < ApplicationController
  before_action :set_driver_journey, only: [:show, :edit, :update, :destroy]

  # GET /driver_journeys
  # GET /driver_journeys.json
  def index
    @passenger_journey = PassengerJourney.find(params[:journey_id])
    @driver_journeys = Driver.new(@passenger_journey).driver_journeys
    respond_to do |format|
      format.html { render action: 'index' }
      format.js { render action: 'index' }
      format.json { render json: @driver_journeys }
    end
  end

  # GET /driver_journeys/1
  # GET /driver_journeys/1.json
  def show
    @passenger_journeys = Passenger.new(@driver_journey).passenger_journeys
  end

  # GET /driver_journeys/new
  def new
    @driver_journey = DriverJourney.new
    3.times do |i|
      @driver_journey.start_journey_stops.build(stop_type: 'start')
      @driver_journey.end_journey_stops.build(stop_type: 'end')
    end
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
        format.html { redirect_to journeys_path, notice: 'Driver journey was successfully created.' }
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
        format.html { redirect_to journeys_path, notice: 'Driver journey was successfully updated.' }
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
      format.html { redirect_to journeys_url }
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
      params[:driver_journey].permit(
        :source_id,
        :destination_id,
        :user_id,
        :vehicle_id,
        :start_time,
        :end_time, 
        :journey_stops_attributes => [
          :stop_id,
          :stop_type
        ]
      )
    end
end
