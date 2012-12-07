require 'spec_helper'

describe "purchase_item_statuses/show" do
  before(:each) do
    @purchase_item_status = assign(:purchase_item_status, stub_model(PurchaseItemStatus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
