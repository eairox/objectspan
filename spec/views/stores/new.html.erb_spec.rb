require 'spec_helper'

describe "stores/new" do
  before(:each) do
    assign(:store, stub_model(Store,
      :name => "MyString",
      :company_id => 1,
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state_id => 1,
      :country_id => 1,
      :other_state => "MyString",
      :zipcode => "MyString",
      :phone => "MyString",
      :longitude => "MyString",
      :latitude => "MyString",
      :store_url => "MyString",
      :description => "MyText",
      :rating => 1,
      :fax => "MyString",
      :email => "MyString",
      :store_type_id => 1,
      :store_number => "MyString"
    ).as_new_record)
  end

  it "renders new store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path, :method => "post" do
      assert_select "input#store_name", :name => "store[name]"
      assert_select "input#store_company_id", :name => "store[company_id]"
      assert_select "input#store_address1", :name => "store[address1]"
      assert_select "input#store_address2", :name => "store[address2]"
      assert_select "input#store_city", :name => "store[city]"
      assert_select "input#store_state_id", :name => "store[state_id]"
      assert_select "input#store_country_id", :name => "store[country_id]"
      assert_select "input#store_other_state", :name => "store[other_state]"
      assert_select "input#store_zipcode", :name => "store[zipcode]"
      assert_select "input#store_phone", :name => "store[phone]"
      assert_select "input#store_longitude", :name => "store[longitude]"
      assert_select "input#store_latitude", :name => "store[latitude]"
      assert_select "input#store_store_url", :name => "store[store_url]"
      assert_select "textarea#store_description", :name => "store[description]"
      assert_select "input#store_rating", :name => "store[rating]"
      assert_select "input#store_fax", :name => "store[fax]"
      assert_select "input#store_email", :name => "store[email]"
      assert_select "input#store_store_type_id", :name => "store[store_type_id]"
      assert_select "input#store_store_number", :name => "store[store_number]"
    end
  end
end
