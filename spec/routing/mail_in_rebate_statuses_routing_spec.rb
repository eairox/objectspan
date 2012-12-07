require "spec_helper"

describe MailInRebateStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/mail_in_rebate_statuses").should route_to("mail_in_rebate_statuses#index")
    end

    it "routes to #new" do
      get("/mail_in_rebate_statuses/new").should route_to("mail_in_rebate_statuses#new")
    end

    it "routes to #show" do
      get("/mail_in_rebate_statuses/1").should route_to("mail_in_rebate_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mail_in_rebate_statuses/1/edit").should route_to("mail_in_rebate_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mail_in_rebate_statuses").should route_to("mail_in_rebate_statuses#create")
    end

    it "routes to #update" do
      put("/mail_in_rebate_statuses/1").should route_to("mail_in_rebate_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mail_in_rebate_statuses/1").should route_to("mail_in_rebate_statuses#destroy", :id => "1")
    end

  end
end
