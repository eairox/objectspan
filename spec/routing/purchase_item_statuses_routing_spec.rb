require "spec_helper"

describe PurchaseItemStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_item_statuses").should route_to("purchase_item_statuses#index")
    end

    it "routes to #new" do
      get("/purchase_item_statuses/new").should route_to("purchase_item_statuses#new")
    end

    it "routes to #show" do
      get("/purchase_item_statuses/1").should route_to("purchase_item_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_item_statuses/1/edit").should route_to("purchase_item_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_item_statuses").should route_to("purchase_item_statuses#create")
    end

    it "routes to #update" do
      put("/purchase_item_statuses/1").should route_to("purchase_item_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_item_statuses/1").should route_to("purchase_item_statuses#destroy", :id => "1")
    end

  end
end
