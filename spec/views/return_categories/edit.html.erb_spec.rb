require 'spec_helper'

describe "return_categories/edit" do
  before(:each) do
    @return_category = assign(:return_category, stub_model(ReturnCategory,
      :name => "MyString"
    ))
  end

  it "renders the edit return_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => return_categories_path(@return_category), :method => "post" do
      assert_select "input#return_category_name", :name => "return_category[name]"
    end
  end
end
