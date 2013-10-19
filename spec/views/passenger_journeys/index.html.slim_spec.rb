require 'spec_helper'

describe "passenger_journeys/index" do
  before(:each) do
    assign(:passenger_journeys, [
      stub_model(PassengerJourney),
      stub_model(PassengerJourney)
    ])
  end

  it "renders a list of passenger_journeys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
