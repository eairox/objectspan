require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :url => "Url",
        :email => "Email",
        :phone => "Phone",
        :fax => "Fax",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_id => 1,
        :other_state => "Other State",
        :zipcode => "Zipcode",
        :country_id => 2,
        :description => "MyText"
      ),
      stub_model(Company,
        :name => "Name",
        :url => "Url",
        :email => "Email",
        :phone => "Phone",
        :fax => "Fax",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_id => 1,
        :other_state => "Other State",
        :zipcode => "Zipcode",
        :country_id => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Other State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
