require "spec_helper"

describe CompanyCategoryReturnPoliciesController do
  describe "routing" do

    it "routes to #index" do
      get("/company_category_return_policies").should route_to("company_category_return_policies#index")
    end

    it "routes to #new" do
      get("/company_category_return_policies/new").should route_to("company_category_return_policies#new")
    end

    it "routes to #show" do
      get("/company_category_return_policies/1").should route_to("company_category_return_policies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_category_return_policies/1/edit").should route_to("company_category_return_policies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_category_return_policies").should route_to("company_category_return_policies#create")
    end

    it "routes to #update" do
      put("/company_category_return_policies/1").should route_to("company_category_return_policies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_category_return_policies/1").should route_to("company_category_return_policies#destroy", :id => "1")
    end

  end
end
