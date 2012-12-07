require "spec_helper"

describe ExchangeDurationTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/exchange_duration_types").should route_to("exchange_duration_types#index")
    end

    it "routes to #new" do
      get("/exchange_duration_types/new").should route_to("exchange_duration_types#new")
    end

    it "routes to #show" do
      get("/exchange_duration_types/1").should route_to("exchange_duration_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exchange_duration_types/1/edit").should route_to("exchange_duration_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exchange_duration_types").should route_to("exchange_duration_types#create")
    end

    it "routes to #update" do
      put("/exchange_duration_types/1").should route_to("exchange_duration_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exchange_duration_types/1").should route_to("exchange_duration_types#destroy", :id => "1")
    end

  end
end
