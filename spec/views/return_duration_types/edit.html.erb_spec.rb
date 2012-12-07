require 'spec_helper'

describe "return_duration_types/edit" do
  before(:each) do
    @return_duration_type = assign(:return_duration_type, stub_model(ReturnDurationType,
      :name => "MyString"
    ))
  end

  it "renders the edit return_duration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => return_duration_types_path(@return_duration_type), :method => "post" do
      assert_select "input#return_duration_type_name", :name => "return_duration_type[name]"
    end
  end
end
