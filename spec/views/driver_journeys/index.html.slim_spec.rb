require 'spec_helper'

describe "driver_journeys/index" do
  before(:each) do
    assign(:driver_journeys, [
      stub_model(DriverJourney),
      stub_model(DriverJourney)
    ])
  end

  it "renders a list of driver_journeys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
