require "spec_helper"

describe StoreTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/store_types").should route_to("store_types#index")
    end

    it "routes to #new" do
      get("/store_types/new").should route_to("store_types#new")
    end

    it "routes to #show" do
      get("/store_types/1").should route_to("store_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/store_types/1/edit").should route_to("store_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/store_types").should route_to("store_types#create")
    end

    it "routes to #update" do
      put("/store_types/1").should route_to("store_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/store_types/1").should route_to("store_types#destroy", :id => "1")
    end

  end
end
