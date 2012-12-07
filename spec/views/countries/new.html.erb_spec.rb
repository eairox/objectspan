require 'spec_helper'

describe "countries/new" do
  before(:each) do
    assign(:country, stub_model(Country,
      :code => "MyString",
      :name => "MyString",
      :rank => 1,
      :is_obsolete => false
    ).as_new_record)
  end

  it "renders new country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => countries_path, :method => "post" do
      assert_select "input#country_code", :name => "country[code]"
      assert_select "input#country_name", :name => "country[name]"
      assert_select "input#country_rank", :name => "country[rank]"
      assert_select "input#country_is_obsolete", :name => "country[is_obsolete]"
    end
  end
end
