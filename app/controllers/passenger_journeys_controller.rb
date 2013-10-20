class PassengerJourneysController < ApplicationController
  before_action :set_passenger_journey, only: [:show, :edit, :update, :destroy]

  # GET /passenger_journeys
  # GET /passenger_journeys.json
  def index
    @passenger_journeys = PassengerJourney.all
  end

  # GET /passenger_journeys/1
  # GET /passenger_journeys/1.json
  def show
  end

  # GET /passenger_journeys/new
  def new
    @passenger_journey = PassengerJourney.new
  end

  # GET /passenger_journeys/1/edit
  def edit
  end

  # POST /passenger_journeys
  # POST /passenger_journeys.json
  def create
    @passenger_journey = PassengerJourney.new(passenger_journey_params)

    respond_to do |format|
      if @passenger_journey.save
        format.html { redirect_to journeys_url, notice: 'Passenger journey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @passenger_journey }
      else
        format.html { render action: 'new' }
        format.json { render json: @passenger_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passenger_journeys/1
  # PATCH/PUT /passenger_journeys/1.json
  def update
    respond_to do |format|
      if @passenger_journey.update(passenger_journey_params)
        format.html { redirect_to journeys_url, notice: 'Passenger journey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @passenger_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passenger_journeys/1
  # DELETE /passenger_journeys/1.json
  def destroy
    @passenger_journey.destroy
    respond_to do |format|
      format.html { redirect_to journeys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger_journey
      @passenger_journey = PassengerJourney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passenger_journey_params
      params[:passenger_journey].permit(:source_id, :destination_id, :user_id, :start_time, :end_time)
    end
end
