class Passenger

  attr_accessor :user, :driver_journey, :params

  def initialize(driver_journey, params = {})
    @user = driver_journey.user
    @driver_journey = driver_journey
    @params = params
  end

  def passenger_journeys
    PassengerJourney
      .where.not(id: driver_journey.id, user_id: user.id)
      .where(source_id: source_ids, destination_id: destination_ids)
      .where(start_time: (start_time + 15.minutes)..(start_time - 15.minutes))
      .where(end_time: (end_time + 15.minutes)..(end_time - 15.minutes))
  end

  def source_ids
    return Array(params["start_point"]) if params["start_point"]
    driver_journey.start_journey_stops.map(&:id) + Array(driver_journey.source_id)
  end

  def destination_ids
    return Array(params["end_point"]) if params["end_point"]
    driver_journey.end_journey_stops.map(&:id) + Array(driver_journey.destination_id)
  end

  def start_time
    driver_journey.start_time
  end

  def end_time
    driver_journey.end_time
  end

end
