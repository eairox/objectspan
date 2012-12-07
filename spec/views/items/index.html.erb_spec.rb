require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :name => "Name",
        :short_description => "Short Description",
        :upc => "Upc",
        :full_description => "MyText",
        :features => "MyText",
        :make_id => 1,
        :model_name => "Model Name",
        :list_price => 1.5
      ),
      stub_model(Item,
        :name => "Name",
        :short_description => "Short Description",
        :upc => "Upc",
        :full_description => "MyText",
        :features => "MyText",
        :make_id => 1,
        :model_name => "Model Name",
        :list_price => 1.5
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    assert_select "tr>td", :text => "Upc".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Model Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
