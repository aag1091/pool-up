require 'spec_helper'

describe "passenger_journeys/show" do
  before(:each) do
    @passenger_journey = assign(:passenger_journey, stub_model(PassengerJourney))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
