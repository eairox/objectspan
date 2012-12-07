require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :short_description => "MyString",
      :upc => "MyString",
      :full_description => "MyText",
      :features => "MyText",
      :make_id => 1,
      :model_name => "MyString",
      :list_price => 1.5
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "input#item_short_description", :name => "item[short_description]"
      assert_select "input#item_upc", :name => "item[upc]"
      assert_select "textarea#item_full_description", :name => "item[full_description]"
      assert_select "textarea#item_features", :name => "item[features]"
      assert_select "input#item_make_id", :name => "item[make_id]"
      assert_select "input#item_model_name", :name => "item[model_name]"
      assert_select "input#item_list_price", :name => "item[list_price]"
    end
  end
end
