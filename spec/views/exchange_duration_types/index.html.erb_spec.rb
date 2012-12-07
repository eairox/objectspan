require 'spec_helper'

describe "exchange_duration_types/index" do
  before(:each) do
    assign(:exchange_duration_types, [
      stub_model(ExchangeDurationType,
        :name => "Name"
      ),
      stub_model(ExchangeDurationType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of exchange_duration_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
