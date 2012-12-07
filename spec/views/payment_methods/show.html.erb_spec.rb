require 'spec_helper'

describe "payment_methods/show" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(PaymentMethod,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
  end
end
