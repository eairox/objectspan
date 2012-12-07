require 'spec_helper'

describe "purchases/index" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :name => "Name",
        :group_id => 1,
        :store_id => 2,
        :payment_method_id => 3,
        :visibility_id => 4,
        :user_id => 5
      ),
      stub_model(Purchase,
        :name => "Name",
        :group_id => 1,
        :store_id => 2,
        :payment_method_id => 3,
        :visibility_id => 4,
        :user_id => 5
      )
    ])
  end

  it "renders a list of purchases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
