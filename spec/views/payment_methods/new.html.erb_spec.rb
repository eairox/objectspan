require 'spec_helper'

describe "payment_methods/new" do
  before(:each) do
    assign(:payment_method, stub_model(PaymentMethod,
      :name => "MyString",
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
    ).as_new_record)
  end

  it "renders new payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_methods_path, :method => "post" do
      assert_select "input#payment_method_name", :name => "payment_method[name]"
      assert_select "input#payment_method_protection_duration", :name => "payment_method[protection_duration]"
      assert_select "input#payment_method_duration_frequency_id", :name => "payment_method[duration_frequency_id]"
      assert_select "input#payment_method_protection_limit", :name => "payment_method[protection_limit]"
      assert_select "input#payment_method_purchase_protection", :name => "payment_method[purchase_protection]"
      assert_select "input#payment_method_stolen", :name => "payment_method[stolen]"
      assert_select "input#payment_method_lost", :name => "payment_method[lost]"
      assert_select "input#payment_method_water_damaged", :name => "payment_method[water_damaged]"
      assert_select "input#payment_method_return_protection", :name => "payment_method[return_protection]"
      assert_select "input#payment_method_warranty_protection", :name => "payment_method[warranty_protection]"
      assert_select "input#payment_method_warranty_duration", :name => "payment_method[warranty_duration]"
      assert_select "input#payment_method_per_item_limit", :name => "payment_method[per_item_limit]"
      assert_select "input#payment_method_wordwide", :name => "payment_method[wordwide]"
    end
  end
end
