require 'spec_helper'

describe "item_categorizations/show" do
  before(:each) do
    @item_categorization = assign(:item_categorization, stub_model(ItemCategorization,
      :item_id => 1,
      :category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
