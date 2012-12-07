require 'spec_helper'

describe "purchase_items/show" do
  before(:each) do
    @purchase_item = assign(:purchase_item, stub_model(PurchaseItem,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/Serial Number/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/Return Tracking/)
    rendered.should match(/7/)
  end
end
