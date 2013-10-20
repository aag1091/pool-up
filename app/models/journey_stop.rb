class JourneyStop < ActiveRecord::Base
  belongs_to :journey
  belongs_to :stop

  validates :stop_id, presence: true

end
