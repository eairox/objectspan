require "spec_helper"

describe PurchaseItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_items").should route_to("purchase_items#index")
    end

    it "routes to #new" do
      get("/purchase_items/new").should route_to("purchase_items#new")
    end

    it "routes to #show" do
      get("/purchase_items/1").should route_to("purchase_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_items/1/edit").should route_to("purchase_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_items").should route_to("purchase_items#create")
    end

    it "routes to #update" do
      put("/purchase_items/1").should route_to("purchase_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_items/1").should route_to("purchase_items#destroy", :id => "1")
    end

  end
end
