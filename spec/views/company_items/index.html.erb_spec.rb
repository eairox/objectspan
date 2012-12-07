require 'spec_helper'

describe "company_items/index" do
  before(:each) do
    assign(:company_items, [
      stub_model(CompanyItem,
        :company_id => 1,
        :item_id => 2,
        :sku => "Sku",
        :price => 1.5,
        :url => "Url",
        :store_return_category_id => 3
      ),
      stub_model(CompanyItem,
        :company_id => 1,
        :item_id => 2,
        :sku => "Sku",
        :price => 1.5,
        :url => "Url",
        :store_return_category_id => 3
      )
    ])
  end

  it "renders a list of company_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
