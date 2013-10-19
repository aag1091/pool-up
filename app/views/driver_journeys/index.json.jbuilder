json.array!(@driver_journeys) do |driver_journey|
  json.extract! driver_journey, 
  json.url driver_journey_url(driver_journey, format: :json)
end
