require "spec_helper"

describe UserItemRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_item_relationships").should route_to("user_item_relationships#index")
    end

    it "routes to #new" do
      get("/user_item_relationships/new").should route_to("user_item_relationships#new")
    end

    it "routes to #show" do
      get("/user_item_relationships/1").should route_to("user_item_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_item_relationships/1/edit").should route_to("user_item_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_item_relationships").should route_to("user_item_relationships#create")
    end

    it "routes to #update" do
      put("/user_item_relationships/1").should route_to("user_item_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_item_relationships/1").should route_to("user_item_relationships#destroy", :id => "1")
    end

  end
end
