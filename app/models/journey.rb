class Journey < ActiveRecord::Base

  belongs_to :source, class_name: "Stop" 
  belongs_to :destination, class_name: "Stop"
  belongs_to :user
  belongs_to :vehicle

  validates :source_id, :destination_id, :user_id, :start_time, :end_time, presence: true

  has_many :journey_stops
  has_many :stops, through: :journey_stops
  accepts_nested_attributes_for :journey_stops

  has_many :start_journey_stops, -> { where stop_type: 'start' }, class_name: 'JourneyStop'
  has_many :end_journey_stops, -> { where stop_type: 'end' }, class_name: 'JourneyStop'

end
