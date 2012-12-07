require 'spec_helper'

describe "company_items/edit" do
  before(:each) do
    @company_item = assign(:company_item, stub_model(CompanyItem,
      :company_id => 1,
      :item_id => 1,
      :sku => "MyString",
      :price => 1.5,
      :url => "MyString",
      :store_return_category_id => 1
    ))
  end

  it "renders the edit company_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_items_path(@company_item), :method => "post" do
      assert_select "input#company_item_company_id", :name => "company_item[company_id]"
      assert_select "input#company_item_item_id", :name => "company_item[item_id]"
      assert_select "input#company_item_sku", :name => "company_item[sku]"
      assert_select "input#company_item_price", :name => "company_item[price]"
      assert_select "input#company_item_url", :name => "company_item[url]"
      assert_select "input#company_item_store_return_category_id", :name => "company_item[store_return_category_id]"
    end
  end
end
