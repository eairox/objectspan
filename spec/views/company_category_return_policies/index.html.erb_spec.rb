require 'spec_helper'

describe "company_category_return_policies/index" do
  before(:each) do
    assign(:company_category_return_policies, [
      stub_model(CompanyCategoryReturnPolicy,
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
      ),
      stub_model(CompanyCategoryReturnPolicy,
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
      )
    ])
  end

  it "renders a list of company_category_return_policies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
