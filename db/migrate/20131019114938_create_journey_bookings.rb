class CreateJourneyBookings < ActiveRecord::Migration
  def change
    create_table :journey_bookings do |t|
      t.references :driver_journey
      t.references :passenger_journey
      t.boolean :confirmed
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
