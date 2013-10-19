class Journey < ActiveRecord::Base

  belongs_to :source, class_name: "Stop" 
  belongs_to :destination, class_name: "Stop"
  belongs_to :user

end
