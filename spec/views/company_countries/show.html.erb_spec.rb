require 'spec_helper'

describe "company_countries/show" do
  before(:each) do
    @company_country = assign(:company_country, stub_model(CompanyCountry,
      :company_id => 1,
      :country_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
