require 'spec_helper'

describe "store_types/index" do
  before(:each) do
    assign(:store_types, [
      stub_model(StoreType,
        :name => "Name"
      ),
      stub_model(StoreType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of store_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
