require 'spec_helper'

describe "states/show" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :name => "Name",
      :state_code => "State Code",
      :country_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/State Code/)
    rendered.should match(/1/)
  end
end
