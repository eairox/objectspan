require 'spec_helper'

describe "exchange_duration_types/show" do
  before(:each) do
    @exchange_duration_type = assign(:exchange_duration_type, stub_model(ExchangeDurationType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
