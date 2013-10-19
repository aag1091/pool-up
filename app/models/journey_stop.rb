class JourneyStop < ActiveRecord::Base
  belongs_to :journey
  belongs_to :stop
end
