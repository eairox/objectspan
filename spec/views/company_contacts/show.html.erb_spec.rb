require 'spec_helper'

describe "company_contacts/show" do
  before(:each) do
    @company_contact = assign(:company_contact, stub_model(CompanyContact,
      :company_id => 1,
      :contact_type => "Contact Type",
      :contact_value => "Contact Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Contact Type/)
    rendered.should match(/Contact Value/)
  end
end
