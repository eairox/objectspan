require 'spec_helper'

describe "visibilities/show" do
  before(:each) do
    @visibility = assign(:visibility, stub_model(Visibility,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
