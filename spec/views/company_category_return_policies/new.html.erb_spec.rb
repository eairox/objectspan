require 'spec_helper'

describe "company_category_return_policies/new" do
  before(:each) do
    assign(:company_category_return_policy, stub_model(CompanyCategoryReturnPolicy,
      :company_id => 1,
      :return_category_id => 1,
      :restocking_fee_precentage => 1.5,
      :return_duration => 1,
      :return_duration_type_id => 1,
      :exchange_duration => 1,
      :exchange_duration_type_id => 1,
      :rma_required => false,
      :open_used_returnable => false,
      :restrictions => "MyText"
    ).as_new_record)
  end

  it "renders new company_category_return_policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_category_return_policies_path, :method => "post" do
      assert_select "input#company_category_return_policy_company_id", :name => "company_category_return_policy[company_id]"
      assert_select "input#company_category_return_policy_return_category_id", :name => "company_category_return_policy[return_category_id]"
      assert_select "input#company_category_return_policy_restocking_fee_precentage", :name => "company_category_return_policy[restocking_fee_precentage]"
      assert_select "input#company_category_return_policy_return_duration", :name => "company_category_return_policy[return_duration]"
      assert_select "input#company_category_return_policy_return_duration_type_id", :name => "company_category_return_policy[return_duration_type_id]"
      assert_select "input#company_category_return_policy_exchange_duration", :name => "company_category_return_policy[exchange_duration]"
      assert_select "input#company_category_return_policy_exchange_duration_type_id", :name => "company_category_return_policy[exchange_duration_type_id]"
      assert_select "input#company_category_return_policy_rma_required", :name => "company_category_return_policy[rma_required]"
      assert_select "input#company_category_return_policy_open_used_returnable", :name => "company_category_return_policy[open_used_returnable]"
      assert_select "textarea#company_category_return_policy_restrictions", :name => "company_category_return_policy[restrictions]"
    end
  end
end
