require 'spec_helper'

describe "visibilities/index" do
  before(:each) do
    assign(:visibilities, [
      stub_model(Visibility,
        :name => "Name"
      ),
      stub_model(Visibility,
        :name => "Name"
      )
    ])
  end

  it "renders a list of visibilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
