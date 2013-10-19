class Vehicle < ActiveRecord::Base

  validates :drive_type, :capacity, :plate_no, :model, :user_id, presence: true

end
