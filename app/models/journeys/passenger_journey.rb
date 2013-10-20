class PassengerJourney < Journey

  has_many :journey_bookings, foreign_key: :passenger_journey_id
  has_one :confirmed_journey_booking,
    -> { where confirmed: 'true' },
    class_name: 'JourneyBooking',
    foreign_key: :passenger_journey_id

end