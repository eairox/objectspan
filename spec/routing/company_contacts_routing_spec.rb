require "spec_helper"

describe CompanyContactsController do
  describe "routing" do

    it "routes to #index" do
      get("/company_contacts").should route_to("company_contacts#index")
    end

    it "routes to #new" do
      get("/company_contacts/new").should route_to("company_contacts#new")
    end

    it "routes to #show" do
      get("/company_contacts/1").should route_to("company_contacts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_contacts/1/edit").should route_to("company_contacts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_contacts").should route_to("company_contacts#create")
    end

    it "routes to #update" do
      put("/company_contacts/1").should route_to("company_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_contacts/1").should route_to("company_contacts#destroy", :id => "1")
    end

  end
end
