require 'spec_helper'

describe "relationship_types/new" do
  before(:each) do
    assign(:relationship_type, stub_model(RelationshipType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new relationship_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relationship_types_path, :method => "post" do
      assert_select "input#relationship_type_name", :name => "relationship_type[name]"
    end
  end
end
