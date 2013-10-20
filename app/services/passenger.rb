class Passenger

  attr_accessor :user, :driver_journey

  def initialize(driver_journey)
    @user = driver_journey.user
    @driver_journey = driver_journey
  end

  def passenger_journeys
    PassengerJourney.all
  end

end
