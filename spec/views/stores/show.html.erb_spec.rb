require 'spec_helper'

describe "stores/show" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Other State/)
    rendered.should match(/Zipcode/)
    rendered.should match(/Phone/)
    rendered.should match(/Longitude/)
    rendered.should match(/Latitude/)
    rendered.should match(/Store Url/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
    rendered.should match(/Fax/)
    rendered.should match(/Email/)
    rendered.should match(/5/)
    rendered.should match(/Store Number/)
  end
end
