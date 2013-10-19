class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :drive_type
      t.integer :capacity
      t.integer :vacancy
      t.string :plate_no
      t.string :model
      t.references :user

      t.timestamps
    end
  end
end
