require 'spec_helper'

describe "item_categorizations/index" do
  before(:each) do
    assign(:item_categorizations, [
      stub_model(ItemCategorization,
        :item_id => 1,
        :category_id => 2
      ),
      stub_model(ItemCategorization,
        :item_id => 1,
        :category_id => 2
      )
    ])
  end

  it "renders a list of item_categorizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
