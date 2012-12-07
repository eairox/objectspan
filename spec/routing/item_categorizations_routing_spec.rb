require "spec_helper"

describe ItemCategorizationsController do
  describe "routing" do

    it "routes to #index" do
      get("/item_categorizations").should route_to("item_categorizations#index")
    end

    it "routes to #new" do
      get("/item_categorizations/new").should route_to("item_categorizations#new")
    end

    it "routes to #show" do
      get("/item_categorizations/1").should route_to("item_categorizations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_categorizations/1/edit").should route_to("item_categorizations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_categorizations").should route_to("item_categorizations#create")
    end

    it "routes to #update" do
      put("/item_categorizations/1").should route_to("item_categorizations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_categorizations/1").should route_to("item_categorizations#destroy", :id => "1")
    end

  end
end
