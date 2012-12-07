require 'spec_helper'

describe "store_types/show" do
  before(:each) do
    @store_type = assign(:store_type, stub_model(StoreType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
