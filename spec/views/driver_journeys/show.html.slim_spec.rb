require 'spec_helper'

describe "driver_journeys/show" do
  before(:each) do
    @driver_journey = assign(:driver_journey, stub_model(DriverJourney))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
