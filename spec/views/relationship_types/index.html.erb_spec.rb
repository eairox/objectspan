require 'spec_helper'

describe "relationship_types/index" do
  before(:each) do
    assign(:relationship_types, [
      stub_model(RelationshipType,
        :name => "Name"
      ),
      stub_model(RelationshipType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of relationship_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
