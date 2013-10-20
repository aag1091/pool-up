class Driver

  attr_accessor :user, :passenger_journey

  def initialize(passenger_journey)
    @user = passenger_journey.user
    @passenger_journey = passenger_journey
  end

  def driver_journeys
    DriverJourney.all
  end

end
