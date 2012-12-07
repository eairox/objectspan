require 'spec_helper'

describe "PurchaseFeedbacks" do
  describe "GET /purchase_feedbacks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get purchase_feedbacks_path
      response.status.should be(200)
    end
  end
end
