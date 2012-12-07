require "spec_helper"

describe DurationFrequenciesController do
  describe "routing" do

    it "routes to #index" do
      get("/duration_frequencies").should route_to("duration_frequencies#index")
    end

    it "routes to #new" do
      get("/duration_frequencies/new").should route_to("duration_frequencies#new")
    end

    it "routes to #show" do
      get("/duration_frequencies/1").should route_to("duration_frequencies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/duration_frequencies/1/edit").should route_to("duration_frequencies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/duration_frequencies").should route_to("duration_frequencies#create")
    end

    it "routes to #update" do
      put("/duration_frequencies/1").should route_to("duration_frequencies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/duration_frequencies/1").should route_to("duration_frequencies#destroy", :id => "1")
    end

  end
end
