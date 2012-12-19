require "spec_helper"

describe RelationshipTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/relationship_types").should route_to("relationship_types#index")
    end

    it "routes to #new" do
      get("/relationship_types/new").should route_to("relationship_types#new")
    end

    it "routes to #show" do
      get("/relationship_types/1").should route_to("relationship_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relationship_types/1/edit").should route_to("relationship_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relationship_types").should route_to("relationship_types#create")
    end

    it "routes to #update" do
      put("/relationship_types/1").should route_to("relationship_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relationship_types/1").should route_to("relationship_types#destroy", :id => "1")
    end

  end
end
