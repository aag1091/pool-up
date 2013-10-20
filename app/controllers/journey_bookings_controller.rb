class JourneyBookingsController < ApplicationController

  before_action :set_vehicle, only: [:destroy]

  def create
    @journey_booking = JourneyBooking.new(journey_booking_params)
    if params[:driver_add]
      @journey = PassengerJourney.find(params[:journey_booking][:passenger_journey_id])
    else
      @journey = DriverJourney.find(params[:journey_booking][:driver_journey_id])
    end

    respond_to do |format|
      if @journey_booking.save
        format.html { redirect_to journeys_url, notice: 'Journey Boooked.' }
        format.json { render action: 'show', status: :created, location: @journey_booking }
        format.js { render action: 'show' }
      else
        format.html { render action: 'new' }
        format.json { render json: @journey_booking.errors, status: :unprocessable_entity }
        format.js { render action: 'show' }
      end
    end
  end

  def confirm
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey_booking
      @journey_booking = JourneyBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journey_booking_params
      params[:journey_booking].permit(:driver_journey_id, :passenger_journey_id)
    end

end
