require "spec_helper"

describe SurgicalSpecialtiesController do
  describe "routing" do

    it "routes to #index" do
      get("/surgical_specialties").should route_to("surgical_specialties#index")
    end

    it "routes to #new" do
      get("/surgical_specialties/new").should route_to("surgical_specialties#new")
    end

    it "routes to #show" do
      get("/surgical_specialties/1").should route_to("surgical_specialties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surgical_specialties/1/edit").should route_to("surgical_specialties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surgical_specialties").should route_to("surgical_specialties#create")
    end

    it "routes to #update" do
      put("/surgical_specialties/1").should route_to("surgical_specialties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surgical_specialties/1").should route_to("surgical_specialties#destroy", :id => "1")
    end

  end
end
