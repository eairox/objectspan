require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/1/)
    rendered.should match(/Other State/)
    rendered.should match(/Zipcode/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
