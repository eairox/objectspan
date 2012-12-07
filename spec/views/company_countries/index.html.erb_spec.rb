require 'spec_helper'

describe "company_countries/index" do
  before(:each) do
    assign(:company_countries, [
      stub_model(CompanyCountry,
        :company_id => 1,
        :country_id => 2
      ),
      stub_model(CompanyCountry,
        :company_id => 1,
        :country_id => 2
      )
    ])
  end

  it "renders a list of company_countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
