require 'spec_helper'

describe "relationship_types/edit" do
  before(:each) do
    @relationship_type = assign(:relationship_type, stub_model(RelationshipType,
      :name => "MyString"
    ))
  end

  it "renders the edit relationship_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relationship_types_path(@relationship_type), :method => "post" do
      assert_select "input#relationship_type_name", :name => "relationship_type[name]"
    end
  end
end
