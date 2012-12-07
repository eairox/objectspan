require 'spec_helper'

describe "CompanyCountries" do
  describe "GET /company_countries" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get company_countries_path
      response.status.should be(200)
    end
  end
end
