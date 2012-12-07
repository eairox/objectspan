require 'spec_helper'

describe "purchase_item_statuses/new" do
  before(:each) do
    assign(:purchase_item_status, stub_model(PurchaseItemStatus,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new purchase_item_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_item_statuses_path, :method => "post" do
      assert_select "input#purchase_item_status_name", :name => "purchase_item_status[name]"
    end
  end
end
