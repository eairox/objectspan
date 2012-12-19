require 'spec_helper'

describe "user_item_relationships/show" do
  before(:each) do
    @user_item_relationship = assign(:user_item_relationship, stub_model(UserItemRelationship,
      :user_id => 1,
      :item_id => 2,
      :relationship_type_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
