class CreateJourneyStops < ActiveRecord::Migration
  def change
    create_table :journey_spots do |t|
      t.references :journey, index: true
      t.references :stop, index: true
      t.string :stop_type

      t.timestamps
    end
  end
end
