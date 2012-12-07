require 'spec_helper'

describe "company_return_policies/show" do
  before(:each) do
    @company_return_policy = assign(:company_return_policy, stub_model(CompanyReturnPolicy,
      :company_id => 1,
      :return_policy => "MyText",
      :return_policy_url => "Return Policy Url",
      :return_policy_faq => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Return Policy Url/)
    rendered.should match(/MyText/)
  end
end
