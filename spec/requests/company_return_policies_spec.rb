require 'spec_helper'

describe "CompanyReturnPolicies" do
  describe "GET /company_return_policies" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get company_return_policies_path
      response.status.should be(200)
    end
  end
end
