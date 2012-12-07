require 'spec_helper'

describe "company_return_policies/new" do
  before(:each) do
    assign(:company_return_policy, stub_model(CompanyReturnPolicy,
      :company_id => 1,
      :return_policy => "MyText",
      :return_policy_url => "MyString",
      :return_policy_faq => "MyText"
    ).as_new_record)
  end

  it "renders new company_return_policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_return_policies_path, :method => "post" do
      assert_select "input#company_return_policy_company_id", :name => "company_return_policy[company_id]"
      assert_select "textarea#company_return_policy_return_policy", :name => "company_return_policy[return_policy]"
      assert_select "input#company_return_policy_return_policy_url", :name => "company_return_policy[return_policy_url]"
      assert_select "textarea#company_return_policy_return_policy_faq", :name => "company_return_policy[return_policy_faq]"
    end
  end
end
