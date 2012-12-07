require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :url => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state_id => 1,
      :other_state => "MyString",
      :zipcode => "MyString",
      :country_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_url", :name => "company[url]"
      assert_select "input#company_email", :name => "company[email]"
      assert_select "input#company_phone", :name => "company[phone]"
      assert_select "input#company_fax", :name => "company[fax]"
      assert_select "input#company_address1", :name => "company[address1]"
      assert_select "input#company_address2", :name => "company[address2]"
      assert_select "input#company_city", :name => "company[city]"
      assert_select "input#company_state_id", :name => "company[state_id]"
      assert_select "input#company_other_state", :name => "company[other_state]"
      assert_select "input#company_zipcode", :name => "company[zipcode]"
      assert_select "input#company_country_id", :name => "company[country_id]"
      assert_select "textarea#company_description", :name => "company[description]"
    end
  end
end
