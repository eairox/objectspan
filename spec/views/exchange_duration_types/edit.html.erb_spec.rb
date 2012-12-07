require 'spec_helper'

describe "exchange_duration_types/edit" do
  before(:each) do
    @exchange_duration_type = assign(:exchange_duration_type, stub_model(ExchangeDurationType,
      :name => "MyString"
    ))
  end

  it "renders the edit exchange_duration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exchange_duration_types_path(@exchange_duration_type), :method => "post" do
      assert_select "input#exchange_duration_type_name", :name => "exchange_duration_type[name]"
    end
  end
end
