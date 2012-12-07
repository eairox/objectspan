require 'spec_helper'

describe "duration_frequencies/show" do
  before(:each) do
    @duration_frequency = assign(:duration_frequency, stub_model(DurationFrequency,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
