require "spec_helper"

describe ReturnCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/return_categories").should route_to("return_categories#index")
    end

    it "routes to #new" do
      get("/return_categories/new").should route_to("return_categories#new")
    end

    it "routes to #show" do
      get("/return_categories/1").should route_to("return_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/return_categories/1/edit").should route_to("return_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/return_categories").should route_to("return_categories#create")
    end

    it "routes to #update" do
      put("/return_categories/1").should route_to("return_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/return_categories/1").should route_to("return_categories#destroy", :id => "1")
    end

  end
end
