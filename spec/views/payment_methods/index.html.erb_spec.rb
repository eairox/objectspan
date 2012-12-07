require 'spec_helper'

describe "payment_methods/index" do
  before(:each) do
    assign(:payment_methods, [
      stub_model(PaymentMethod,
        :name => "Name",
        :protection_duration => 1.5,
        :duration_frequency_id => 1,
        :protection_limit => 1.5,
        :purchase_protection => false,
        :stolen => false,
        :lost => false,
        :water_damaged => false,
        :return_protection => false,
        :warranty_protection => false,
        :warranty_duration => 1.5,
        :per_item_limit => 1.5,
        :wordwide => false
      ),
      stub_model(PaymentMethod,
        :name => "Name",
        :protection_duration => 1.5,
        :duration_frequency_id => 1,
        :protection_limit => 1.5,
        :purchase_protection => false,
        :stolen => false,
        :lost => false,
        :water_damaged => false,
        :return_protection => false,
        :warranty_protection => false,
        :warranty_duration => 1.5,
        :per_item_limit => 1.5,
        :wordwide => false
      )
    ])
  end

  it "renders a list of payment_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
