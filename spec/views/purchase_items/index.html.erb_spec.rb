require 'spec_helper'

describe "purchase_items/index" do
  before(:each) do
    assign(:purchase_items, [
      stub_model(PurchaseItem,
        :item_id => 1,
        :quantity => 1.5,
        :serial_number => "Serial Number",
        :store_id => 2,
        :price => 1.5,
        :purchase_status_id => 3,
        :purchase_id => 4,
        :tax => 1.5,
        :shipping => 1.5,
        :total => 1.5,
        :mail_in_rebate => 1.5,
        :mail_in_rebate_status => 5,
        :return_store_id => 6,
        :return_tracking => "Return Tracking",
        :purchase_item_status_id => 7
      ),
      stub_model(PurchaseItem,
        :item_id => 1,
        :quantity => 1.5,
        :serial_number => "Serial Number",
        :store_id => 2,
        :price => 1.5,
        :purchase_status_id => 3,
        :purchase_id => 4,
        :tax => 1.5,
        :shipping => 1.5,
        :total => 1.5,
        :mail_in_rebate => 1.5,
        :mail_in_rebate_status => 5,
        :return_store_id => 6,
        :return_tracking => "Return Tracking",
        :purchase_item_status_id => 7
      )
    ])
  end

  it "renders a list of purchase_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Return Tracking".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
