require 'spec_helper'

describe "passenger_journeys/new" do
  before(:each) do
    assign(:passenger_journey, stub_model(PassengerJourney).as_new_record)
  end

  it "renders new passenger_journey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", passenger_journeys_path, "post" do
    end
  end
end
