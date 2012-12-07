require 'spec_helper'

describe "company_contacts/index" do
  before(:each) do
    assign(:company_contacts, [
      stub_model(CompanyContact,
        :company_id => 1,
        :contact_type => "Contact Type",
        :contact_value => "Contact Value"
      ),
      stub_model(CompanyContact,
        :company_id => 1,
        :contact_type => "Contact Type",
        :contact_value => "Contact Value"
      )
    ])
  end

  it "renders a list of company_contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Type".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Value".to_s, :count => 2
  end
end
