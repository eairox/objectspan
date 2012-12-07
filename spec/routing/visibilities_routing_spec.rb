require "spec_helper"

describe VisibilitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/visibilities").should route_to("visibilities#index")
    end

    it "routes to #new" do
      get("/visibilities/new").should route_to("visibilities#new")
    end

    it "routes to #show" do
      get("/visibilities/1").should route_to("visibilities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/visibilities/1/edit").should route_to("visibilities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/visibilities").should route_to("visibilities#create")
    end

    it "routes to #update" do
      put("/visibilities/1").should route_to("visibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/visibilities/1").should route_to("visibilities#destroy", :id => "1")
    end

  end
end
