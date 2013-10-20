class Driver

  attr_accessor :user, :passenger_journey, :params

  def initialize(passenger_journey, params = {})
    @user = passenger_journey.user
    @passenger_journey = passenger_journey
    @params = params
  end

  def driver_journeys
    DriverJourney.where.not(id: passenger_journey.id, user_id: user.id)
      .where(source_id: source_ids, destination_id: destination_ids)
      .where(start_time: (start_time + 15.minutes)..(start_time - 15.minutes))
      .where(end_time: (end_time + 15.minutes)..(end_time - 15.minutes))
  end

  def source_ids
    return Array(params["start_point"]) if params["start_point"]
    passenger_journey.start_journey_stops.map(&:id) + Array(passenger_journey.source_id)
  end

  def destination_ids
    return Array(params["end_point"]) if params["end_point"]
    passenger_journey.end_journey_stops.map(&:id) + Array(passenger_journey.destination_id)
  end

  def start_time
    passenger_journey.start_time
  end

  def end_time
    passenger_journey.end_time
  end

end
