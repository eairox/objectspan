require 'spec_helper'

describe "return_categories/index" do
  before(:each) do
    assign(:return_categories, [
      stub_model(ReturnCategory,
        :name => "Name"
      ),
      stub_model(ReturnCategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of return_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
