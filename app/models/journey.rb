class Journey < ActiveRecord::Base

  belongs_to :source, class_name: "Stop" 
  belongs_to :destination, class_name: "Stop"
  belongs_to :user
  belongs_to :vehicle

  validates :source, :destination, :user, :vehicle, :start_time, :end_time, presence: true

end
