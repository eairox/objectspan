require 'spec_helper'

describe "company_types/edit" do
  before(:each) do
    @company_type = assign(:company_type, stub_model(CompanyType,
      :name => "MyString"
    ))
  end

  it "renders the edit company_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_types_path(@company_type), :method => "post" do
      assert_select "input#company_type_name", :name => "company_type[name]"
    end
  end
end
