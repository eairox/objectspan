require "spec_helper"

describe CompanyItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/company_items").should route_to("company_items#index")
    end

    it "routes to #new" do
      get("/company_items/new").should route_to("company_items#new")
    end

    it "routes to #show" do
      get("/company_items/1").should route_to("company_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_items/1/edit").should route_to("company_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_items").should route_to("company_items#create")
    end

    it "routes to #update" do
      put("/company_items/1").should route_to("company_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_items/1").should route_to("company_items#destroy", :id => "1")
    end

  end
end
