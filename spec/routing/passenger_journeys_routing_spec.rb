require "spec_helper"

describe PassengerJourneysController do
  describe "routing" do

    it "routes to #index" do
      get("/passenger_journeys").should route_to("passenger_journeys#index")
    end

    it "routes to #new" do
      get("/passenger_journeys/new").should route_to("passenger_journeys#new")
    end

    it "routes to #show" do
      get("/passenger_journeys/1").should route_to("passenger_journeys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/passenger_journeys/1/edit").should route_to("passenger_journeys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/passenger_journeys").should route_to("passenger_journeys#create")
    end

    it "routes to #update" do
      put("/passenger_journeys/1").should route_to("passenger_journeys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/passenger_journeys/1").should route_to("passenger_journeys#destroy", :id => "1")
    end

  end
end
