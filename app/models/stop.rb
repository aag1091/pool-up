class Stop < ActiveRecord::Base

  default_scope { order('created_at DESC') }

  validates :name, presence: true

  has_many :journey_stops
  has_many :journeys, through: :journey_stops

end
