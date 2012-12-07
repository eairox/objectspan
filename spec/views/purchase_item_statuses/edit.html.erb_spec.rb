require 'spec_helper'

describe "purchase_item_statuses/edit" do
  before(:each) do
    @purchase_item_status = assign(:purchase_item_status, stub_model(PurchaseItemStatus,
      :name => "MyString"
    ))
  end

  it "renders the edit purchase_item_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_item_statuses_path(@purchase_item_status), :method => "post" do
      assert_select "input#purchase_item_status_name", :name => "purchase_item_status[name]"
    end
  end
end
