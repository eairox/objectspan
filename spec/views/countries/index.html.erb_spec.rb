require 'spec_helper'

describe "countries/index" do
  before(:each) do
    assign(:countries, [
      stub_model(Country,
        :code => "Code",
        :name => "Name",
        :rank => 1,
        :is_obsolete => false
      ),
      stub_model(Country,
        :code => "Code",
        :name => "Name",
        :rank => 1,
        :is_obsolete => false
      )
    ])
  end

  it "renders a list of countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
