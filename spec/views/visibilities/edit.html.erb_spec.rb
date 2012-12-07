require 'spec_helper'

describe "visibilities/edit" do
  before(:each) do
    @visibility = assign(:visibility, stub_model(Visibility,
      :name => "MyString"
    ))
  end

  it "renders the edit visibility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => visibilities_path(@visibility), :method => "post" do
      assert_select "input#visibility_name", :name => "visibility[name]"
    end
  end
end
