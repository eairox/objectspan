require 'spec_helper'

describe "duration_frequencies/new" do
  before(:each) do
    assign(:duration_frequency, stub_model(DurationFrequency,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new duration_frequency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => duration_frequencies_path, :method => "post" do
      assert_select "input#duration_frequency_name", :name => "duration_frequency[name]"
    end
  end
end
