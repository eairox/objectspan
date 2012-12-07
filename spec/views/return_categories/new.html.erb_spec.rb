require 'spec_helper'

describe "return_categories/new" do
  before(:each) do
    assign(:return_category, stub_model(ReturnCategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new return_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => return_categories_path, :method => "post" do
      assert_select "input#return_category_name", :name => "return_category[name]"
    end
  end
end
