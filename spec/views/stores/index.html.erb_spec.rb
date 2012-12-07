require 'spec_helper'

describe "stores/index" do
  before(:each) do
    assign(:stores, [
      stub_model(Store,
        :name => "Name",
        :company_id => 1,
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_id => 2,
        :country_id => 3,
        :other_state => "Other State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :longitude => "Longitude",
        :latitude => "Latitude",
        :store_url => "Store Url",
        :description => "MyText",
        :rating => 4,
        :fax => "Fax",
        :email => "Email",
        :store_type_id => 5,
        :store_number => "Store Number"
      ),
      stub_model(Store,
        :name => "Name",
        :company_id => 1,
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state_id => 2,
        :country_id => 3,
        :other_state => "Other State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :longitude => "Longitude",
        :latitude => "Latitude",
        :store_url => "Store Url",
        :description => "MyText",
        :rating => 4,
        :fax => "Fax",
        :email => "Email",
        :store_type_id => 5,
        :store_number => "Store Number"
      )
    ])
  end

  it "renders a list of stores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Other State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Store Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Store Number".to_s, :count => 2
  end
end
