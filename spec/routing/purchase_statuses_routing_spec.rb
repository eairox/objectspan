require "spec_helper"

describe PurchaseStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_statuses").should route_to("purchase_statuses#index")
    end

    it "routes to #new" do
      get("/purchase_statuses/new").should route_to("purchase_statuses#new")
    end

    it "routes to #show" do
      get("/purchase_statuses/1").should route_to("purchase_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_statuses/1/edit").should route_to("purchase_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_statuses").should route_to("purchase_statuses#create")
    end

    it "routes to #update" do
      put("/purchase_statuses/1").should route_to("purchase_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_statuses/1").should route_to("purchase_statuses#destroy", :id => "1")
    end

  end
end
