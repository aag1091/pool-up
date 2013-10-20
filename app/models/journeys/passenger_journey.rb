class PassengerJourney < Journey

  has_many :journey_bookings, foreign_key: :passenger_journey_id

  has_many :driver_journeys, through: :journey_bookings

end