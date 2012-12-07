require 'spec_helper'

describe "company_return_policies/index" do
  before(:each) do
    assign(:company_return_policies, [
      stub_model(CompanyReturnPolicy,
        :company_id => 1,
        :return_policy => "MyText",
        :return_policy_url => "Return Policy Url",
        :return_policy_faq => "MyText"
      ),
      stub_model(CompanyReturnPolicy,
        :company_id => 1,
        :return_policy => "MyText",
        :return_policy_url => "Return Policy Url",
        :return_policy_faq => "MyText"
      )
    ])
  end

  it "renders a list of company_return_policies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Return Policy Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
