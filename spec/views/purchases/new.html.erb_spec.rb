require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :name => "MyString",
      :group_id => 1,
      :store_id => 1,
      :payment_method_id => 1,
      :visibility_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path, :method => "post" do
      assert_select "input#purchase_name", :name => "purchase[name]"
      assert_select "input#purchase_group_id", :name => "purchase[group_id]"
      assert_select "input#purchase_store_id", :name => "purchase[store_id]"
      assert_select "input#purchase_payment_method_id", :name => "purchase[payment_method_id]"
      assert_select "input#purchase_visibility_id", :name => "purchase[visibility_id]"
      assert_select "input#purchase_user_id", :name => "purchase[user_id]"
    end
  end
end
