require "spec_helper"

describe MedicalConditionsController do
  describe "routing" do

    it "routes to #index" do
      get("/medical_conditions").should route_to("medical_conditions#index")
    end

    it "routes to #new" do
      get("/medical_conditions/new").should route_to("medical_conditions#new")
    end

    it "routes to #show" do
      get("/medical_conditions/1").should route_to("medical_conditions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/medical_conditions/1/edit").should route_to("medical_conditions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/medical_conditions").should route_to("medical_conditions#create")
    end

    it "routes to #update" do
      put("/medical_conditions/1").should route_to("medical_conditions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/medical_conditions/1").should route_to("medical_conditions#destroy", :id => "1")
    end

  end
end
