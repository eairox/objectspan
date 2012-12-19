require 'spec_helper'

describe "user_item_relationships/index" do
  before(:each) do
    assign(:user_item_relationships, [
      stub_model(UserItemRelationship,
        :user_id => 1,
        :item_id => 2,
        :relationship_type_id => 3
      ),
      stub_model(UserItemRelationship,
        :user_id => 1,
        :item_id => 2,
        :relationship_type_id => 3
      )
    ])
  end

  it "renders a list of user_item_relationships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
