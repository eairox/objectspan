require 'spec_helper'

describe "relationship_types/show" do
  before(:each) do
    @relationship_type = assign(:relationship_type, stub_model(RelationshipType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
