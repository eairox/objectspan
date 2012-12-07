require 'spec_helper'

describe "return_duration_types/new" do
  before(:each) do
    assign(:return_duration_type, stub_model(ReturnDurationType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new return_duration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => return_duration_types_path, :method => "post" do
      assert_select "input#return_duration_type_name", :name => "return_duration_type[name]"
    end
  end
end
