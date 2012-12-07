require 'spec_helper'

describe "return_duration_types/index" do
  before(:each) do
    assign(:return_duration_types, [
      stub_model(ReturnDurationType,
        :name => "Name"
      ),
      stub_model(ReturnDurationType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of return_duration_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
