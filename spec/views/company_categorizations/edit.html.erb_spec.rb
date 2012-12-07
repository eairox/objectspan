require 'spec_helper'

describe "company_categorizations/edit" do
  before(:each) do
    @company_categorization = assign(:company_categorization, stub_model(CompanyCategorization,
      :company_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit company_categorization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_categorizations_path(@company_categorization), :method => "post" do
      assert_select "input#company_categorization_company_id", :name => "company_categorization[company_id]"
      assert_select "input#company_categorization_category_id", :name => "company_categorization[category_id]"
    end
  end
end
