require 'spec_helper'

describe "company_categorizations/show" do
  before(:each) do
    @company_categorization = assign(:company_categorization, stub_model(CompanyCategorization,
      :company_id => 1,
      :category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
