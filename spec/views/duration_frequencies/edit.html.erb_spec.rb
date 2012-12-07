require 'spec_helper'

describe "duration_frequencies/edit" do
  before(:each) do
    @duration_frequency = assign(:duration_frequency, stub_model(DurationFrequency,
      :name => "MyString"
    ))
  end

  it "renders the edit duration_frequency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => duration_frequencies_path(@duration_frequency), :method => "post" do
      assert_select "input#duration_frequency_name", :name => "duration_frequency[name]"
    end
  end
end
