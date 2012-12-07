require 'spec_helper'

describe "return_duration_types/show" do
  before(:each) do
    @return_duration_type = assign(:return_duration_type, stub_model(ReturnDurationType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
