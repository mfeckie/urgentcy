require "spec_helper"

describe SurgeonsController do
  describe "routing" do

    it "routes to #index" do
      get("/surgeons").should route_to("surgeons#index")
    end

    it "routes to #new" do
      get("/surgeons/new").should route_to("surgeons#new")
    end

    it "routes to #show" do
      get("/surgeons/1").should route_to("surgeons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surgeons/1/edit").should route_to("surgeons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surgeons").should route_to("surgeons#create")
    end

    it "routes to #update" do
      put("/surgeons/1").should route_to("surgeons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surgeons/1").should route_to("surgeons#destroy", :id => "1")
    end

  end
end
