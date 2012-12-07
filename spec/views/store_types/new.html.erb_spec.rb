require 'spec_helper'

describe "store_types/new" do
  before(:each) do
    assign(:store_type, stub_model(StoreType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new store_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => store_types_path, :method => "post" do
      assert_select "input#store_type_name", :name => "store_type[name]"
    end
  end
end
