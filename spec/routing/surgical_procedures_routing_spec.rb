require "spec_helper"

describe SurgicalProceduresController do
  describe "routing" do

    it "routes to #index" do
      get("/surgical_procedures").should route_to("surgical_procedures#index")
    end

    it "routes to #new" do
      get("/surgical_procedures/new").should route_to("surgical_procedures#new")
    end

    it "routes to #show" do
      get("/surgical_procedures/1").should route_to("surgical_procedures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surgical_procedures/1/edit").should route_to("surgical_procedures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surgical_procedures").should route_to("surgical_procedures#create")
    end

    it "routes to #update" do
      put("/surgical_procedures/1").should route_to("surgical_procedures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surgical_procedures/1").should route_to("surgical_procedures#destroy", :id => "1")
    end

  end
end
