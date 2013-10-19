require 'spec_helper'

describe "driver_journeys/edit" do
  before(:each) do
    @driver_journey = assign(:driver_journey, stub_model(DriverJourney))
  end

  it "renders the edit driver_journey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", driver_journey_path(@driver_journey), "post" do
    end
  end
end
