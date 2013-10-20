class DriverJourney < Journey

  validates :vehicle_id, presence: true

  has_many :journey_bookings, foreign_key: :driver_journey_id
  
  has_many :passenger_journeys, through: :journey_bookings

end