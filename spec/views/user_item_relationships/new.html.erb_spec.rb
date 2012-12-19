require 'spec_helper'

describe "user_item_relationships/new" do
  before(:each) do
    assign(:user_item_relationship, stub_model(UserItemRelationship,
      :user_id => 1,
      :item_id => 1,
      :relationship_type_id => 1
    ).as_new_record)
  end

  it "renders new user_item_relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_item_relationships_path, :method => "post" do
      assert_select "input#user_item_relationship_user_id", :name => "user_item_relationship[user_id]"
      assert_select "input#user_item_relationship_item_id", :name => "user_item_relationship[item_id]"
      assert_select "input#user_item_relationship_relationship_type_id", :name => "user_item_relationship[relationship_type_id]"
    end
  end
end
