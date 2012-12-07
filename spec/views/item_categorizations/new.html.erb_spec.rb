require 'spec_helper'

describe "item_categorizations/new" do
  before(:each) do
    assign(:item_categorization, stub_model(ItemCategorization,
      :item_id => 1,
      :category_id => 1
    ).as_new_record)
  end

  it "renders new item_categorization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => item_categorizations_path, :method => "post" do
      assert_select "input#item_categorization_item_id", :name => "item_categorization[item_id]"
      assert_select "input#item_categorization_category_id", :name => "item_categorization[category_id]"
    end
  end
end
