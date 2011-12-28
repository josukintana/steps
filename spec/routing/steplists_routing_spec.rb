require "spec_helper"

describe SteplistsController do
  describe "routing" do

    it "routes to #index" do
      get("/steplists").should route_to("steplists#index")
    end

    it "routes to #new" do
      get("/steplists/new").should route_to("steplists#new")
    end

    it "routes to #show" do
      get("/steplists/1").should route_to("steplists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/steplists/1/edit").should route_to("steplists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/steplists").should route_to("steplists#create")
    end

    it "routes to #update" do
      put("/steplists/1").should route_to("steplists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/steplists/1").should route_to("steplists#destroy", :id => "1")
    end

  end
end
