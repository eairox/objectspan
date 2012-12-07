require "spec_helper"

describe PurchaseFeedbacksController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_feedbacks").should route_to("purchase_feedbacks#index")
    end

    it "routes to #new" do
      get("/purchase_feedbacks/new").should route_to("purchase_feedbacks#new")
    end

    it "routes to #show" do
      get("/purchase_feedbacks/1").should route_to("purchase_feedbacks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_feedbacks/1/edit").should route_to("purchase_feedbacks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_feedbacks").should route_to("purchase_feedbacks#create")
    end

    it "routes to #update" do
      put("/purchase_feedbacks/1").should route_to("purchase_feedbacks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_feedbacks/1").should route_to("purchase_feedbacks#destroy", :id => "1")
    end

  end
end
