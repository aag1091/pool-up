json.array!(@passenger_journeys) do |passenger_journey|
  json.extract! passenger_journey, 
  json.url passenger_journey_url(passenger_journey, format: :json)
end
