require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "Name",
      :short_description => "Short Description",
      :upc => "Upc",
      :full_description => "MyText",
      :features => "MyText",
      :make_id => 1,
      :model_name => "Model Name",
      :list_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Short Description/)
    rendered.should match(/Upc/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Model Name/)
    rendered.should match(/1.5/)
  end
end
