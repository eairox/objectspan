require 'spec_helper'

describe "exchange_duration_types/new" do
  before(:each) do
    assign(:exchange_duration_type, stub_model(ExchangeDurationType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new exchange_duration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exchange_duration_types_path, :method => "post" do
      assert_select "input#exchange_duration_type_name", :name => "exchange_duration_type[name]"
    end
  end
end
