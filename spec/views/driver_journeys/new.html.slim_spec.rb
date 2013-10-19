require 'spec_helper'

describe "driver_journeys/new" do
  before(:each) do
    assign(:driver_journey, stub_model(DriverJourney).as_new_record)
  end

  it "renders new driver_journey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", driver_journeys_path, "post" do
    end
  end
end
