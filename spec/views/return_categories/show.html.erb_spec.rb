require 'spec_helper'

describe "return_categories/show" do
  before(:each) do
    @return_category = assign(:return_category, stub_model(ReturnCategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
