class AddColumnLatitudeAndLongitudeToStop < ActiveRecord::Migration
  def change
    add_column :stops, :latitude, :string
    add_column :stops, :longitude, :string
  end
end
