require 'spec_helper'

describe "company_countries/edit" do
  before(:each) do
    @company_country = assign(:company_country, stub_model(CompanyCountry,
      :company_id => 1,
      :country_id => 1
    ))
  end

  it "renders the edit company_country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_countries_path(@company_country), :method => "post" do
      assert_select "input#company_country_company_id", :name => "company_country[company_id]"
      assert_select "input#company_country_country_id", :name => "company_country[country_id]"
    end
  end
end
