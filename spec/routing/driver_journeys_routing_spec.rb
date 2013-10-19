require "spec_helper"

describe DriverJourneysController do
  describe "routing" do

    it "routes to #index" do
      get("/driver_journeys").should route_to("driver_journeys#index")
    end

    it "routes to #new" do
      get("/driver_journeys/new").should route_to("driver_journeys#new")
    end

    it "routes to #show" do
      get("/driver_journeys/1").should route_to("driver_journeys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/driver_journeys/1/edit").should route_to("driver_journeys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/driver_journeys").should route_to("driver_journeys#create")
    end

    it "routes to #update" do
      put("/driver_journeys/1").should route_to("driver_journeys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/driver_journeys/1").should route_to("driver_journeys#destroy", :id => "1")
    end

  end
end
