require 'spec_helper'

describe "store_types/edit" do
  before(:each) do
    @store_type = assign(:store_type, stub_model(StoreType,
      :name => "MyString"
    ))
  end

  it "renders the edit store_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => store_types_path(@store_type), :method => "post" do
      assert_select "input#store_type_name", :name => "store_type[name]"
    end
  end
end
