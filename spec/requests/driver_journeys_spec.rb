require 'spec_helper'

describe "DriverJourneys" do
  describe "GET /driver_journeys" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get driver_journeys_path
      response.status.should be(200)
    end
  end
end
