require 'spec_helper'

describe "passenger_journeys/edit" do
  before(:each) do
    @passenger_journey = assign(:passenger_journey, stub_model(PassengerJourney))
  end

  it "renders the edit passenger_journey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", passenger_journey_path(@passenger_journey), "post" do
    end
  end
end
