require 'spec_helper'

describe "company_return_policies/edit" do
  before(:each) do
    @company_return_policy = assign(:company_return_policy, stub_model(CompanyReturnPolicy,
      :company_id => 1,
      :return_policy => "MyText",
      :return_policy_url => "MyString",
      :return_policy_faq => "MyText"
    ))
  end

  it "renders the edit company_return_policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_return_policies_path(@company_return_policy), :method => "post" do
      assert_select "input#company_return_policy_company_id", :name => "company_return_policy[company_id]"
      assert_select "textarea#company_return_policy_return_policy", :name => "company_return_policy[return_policy]"
      assert_select "input#company_return_policy_return_policy_url", :name => "company_return_policy[return_policy_url]"
      assert_select "textarea#company_return_policy_return_policy_faq", :name => "company_return_policy[return_policy_faq]"
    end
  end
end
