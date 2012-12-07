require "spec_helper"

describe CompanyCountriesController do
  describe "routing" do

    it "routes to #index" do
      get("/company_countries").should route_to("company_countries#index")
    end

    it "routes to #new" do
      get("/company_countries/new").should route_to("company_countries#new")
    end

    it "routes to #show" do
      get("/company_countries/1").should route_to("company_countries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_countries/1/edit").should route_to("company_countries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_countries").should route_to("company_countries#create")
    end

    it "routes to #update" do
      put("/company_countries/1").should route_to("company_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_countries/1").should route_to("company_countries#destroy", :id => "1")
    end

  end
end
