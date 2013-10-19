class AddColumnVehicleIdToJourney < ActiveRecord::Migration
  def change
    add_reference :journeys, :vehicle, index: true
  end
end
