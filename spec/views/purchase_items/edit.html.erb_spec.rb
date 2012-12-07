require 'spec_helper'

describe "purchase_items/edit" do
  before(:each) do
    @purchase_item = assign(:purchase_item, stub_model(PurchaseItem,
      :item_id => 1,
      :quantity => 1.5,
      :serial_number => "MyString",
      :store_id => 1,
      :price => 1.5,
      :purchase_status_id => 1,
      :purchase_id => 1,
      :tax => 1.5,
      :shipping => 1.5,
      :total => 1.5,
      :mail_in_rebate => 1.5,
      :mail_in_rebate_status => 1,
      :return_store_id => 1,
      :return_tracking => "MyString",
      :purchase_item_status_id => 1
    ))
  end

  it "renders the edit purchase_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_items_path(@purchase_item), :method => "post" do
      assert_select "input#purchase_item_item_id", :name => "purchase_item[item_id]"
      assert_select "input#purchase_item_quantity", :name => "purchase_item[quantity]"
      assert_select "input#purchase_item_serial_number", :name => "purchase_item[serial_number]"
      assert_select "input#purchase_item_store_id", :name => "purchase_item[store_id]"
      assert_select "input#purchase_item_price", :name => "purchase_item[price]"
      assert_select "input#purchase_item_purchase_status_id", :name => "purchase_item[purchase_status_id]"
      assert_select "input#purchase_item_purchase_id", :name => "purchase_item[purchase_id]"
      assert_select "input#purchase_item_tax", :name => "purchase_item[tax]"
      assert_select "input#purchase_item_shipping", :name => "purchase_item[shipping]"
      assert_select "input#purchase_item_total", :name => "purchase_item[total]"
      assert_select "input#purchase_item_mail_in_rebate", :name => "purchase_item[mail_in_rebate]"
      assert_select "input#purchase_item_mail_in_rebate_status", :name => "purchase_item[mail_in_rebate_status]"
      assert_select "input#purchase_item_return_store_id", :name => "purchase_item[return_store_id]"
      assert_select "input#purchase_item_return_tracking", :name => "purchase_item[return_tracking]"
      assert_select "input#purchase_item_purchase_item_status_id", :name => "purchase_item[purchase_item_status_id]"
    end
  end
end
