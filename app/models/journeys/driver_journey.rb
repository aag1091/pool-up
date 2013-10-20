class DriverJourney < Journey

  validates :vehicle_id, presence: true

  has_many :journey_bookings, foreign_key: :driver_journey_id
  has_many :confirmed_journey_bookings,
    -> { where confirmed: true },
    class_name: 'JourneyBooking',
    foreign_key: :driver_journey_id

end