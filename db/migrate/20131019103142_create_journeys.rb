class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.references :source, index: true
      t.references :destination, index: true
      t.integer :points_per_seat
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, index: true
      t.string :type

      t.timestamps
    end
  end
end
