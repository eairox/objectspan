require "spec_helper"

describe CompanyCategorizationsController do
  describe "routing" do

    it "routes to #index" do
      get("/company_categorizations").should route_to("company_categorizations#index")
    end

    it "routes to #new" do
      get("/company_categorizations/new").should route_to("company_categorizations#new")
    end

    it "routes to #show" do
      get("/company_categorizations/1").should route_to("company_categorizations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_categorizations/1/edit").should route_to("company_categorizations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_categorizations").should route_to("company_categorizations#create")
    end

    it "routes to #update" do
      put("/company_categorizations/1").should route_to("company_categorizations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_categorizations/1").should route_to("company_categorizations#destroy", :id => "1")
    end

  end
end
