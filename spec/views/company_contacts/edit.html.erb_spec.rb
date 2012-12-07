require 'spec_helper'

describe "company_contacts/edit" do
  before(:each) do
    @company_contact = assign(:company_contact, stub_model(CompanyContact,
      :company_id => 1,
      :contact_type => "MyString",
      :contact_value => "MyString"
    ))
  end

  it "renders the edit company_contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_contacts_path(@company_contact), :method => "post" do
      assert_select "input#company_contact_company_id", :name => "company_contact[company_id]"
      assert_select "input#company_contact_contact_type", :name => "company_contact[contact_type]"
      assert_select "input#company_contact_contact_value", :name => "company_contact[contact_value]"
    end
  end
end
