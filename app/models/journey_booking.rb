class JourneyBooking < ActiveRecord::Base

  belongs_to :driver_journey
  belongs_to :passenger_journey

end
