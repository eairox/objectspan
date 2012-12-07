require 'spec_helper'

describe "duration_frequencies/index" do
  before(:each) do
    assign(:duration_frequencies, [
      stub_model(DurationFrequency,
        :name => "Name"
      ),
      stub_model(DurationFrequency,
        :name => "Name"
      )
    ])
  end

  it "renders a list of duration_frequencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
