require 'spec_helper'

describe "company_category_return_policies/show" do
  before(:each) do
    @company_category_return_policy = assign(:company_category_return_policy, stub_model(CompanyCategoryReturnPolicy,
      :company_id => 1,
      :return_category_id => 2,
      :restocking_fee_precentage => 1.5,
      :return_duration => 3,
      :return_duration_type_id => 4,
      :exchange_duration => 5,
      :exchange_duration_type_id => 6,
      :rma_required => false,
      :open_used_returnable => false,
      :restrictions => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
