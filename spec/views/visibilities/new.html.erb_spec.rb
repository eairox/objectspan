require 'spec_helper'

describe "visibilities/new" do
  before(:each) do
    assign(:visibility, stub_model(Visibility,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new visibility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => visibilities_path, :method => "post" do
      assert_select "input#visibility_name", :name => "visibility[name]"
    end
  end
end
