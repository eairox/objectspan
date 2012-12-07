require 'spec_helper'

describe "purchase_statuses/index" do
  before(:each) do
    assign(:purchase_statuses, [
      stub_model(PurchaseStatus,
        :name => "Name"
      ),
      stub_model(PurchaseStatus,
        :name => "Name"
      )
    ])
  end

  it "renders a list of purchase_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
